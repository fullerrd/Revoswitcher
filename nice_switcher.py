import json
import urllib2
import subprocess
import threading
import thread
import multiprocessing
import signal
from time import sleep
import time
from subprocess import call
import os
#from subprocess import call
#from collections import namedtuple

c = threading.Condition()
btc_address = '1MGF8Q9L9PAggm5GTJSoefH8sZDsWWhGsT'
rig_name = 'LinuxTestRig'
#log_file = ' >> miner.log'
log_file = ''
root_dir = '/home/miner/Desktop/Revoswitcher/'
#root_dir = '/etc/Revoswitcher/'
accepted_work = False

class StoppableThread(threading.Thread):
    """Thread class with a stop() method. The thread itself has to check
    regularly for the stopped() condition."""

    def __init__(self):
        super(StoppableThread, self).__init__()
        self._stop_event = threading.Event()

    def stop(self):
        self._stop_event.set()

    def stopped(self):
        return self._stop_event.is_set()

def get_algo():
  prof2_url = 'https://api.nicehash.com/api?method=simplemultialgo.info'
  prof_url = 'https://api.nicehash.com/api?method=stats.global.current'
  attempts = 0
  while attempts < 3:
     try:
        prof_data = json.load(urllib2.urlopen(prof_url))
        break
     except:
        attempts += 1
        print('Failed to contact NiceHash\nWaiting 5 seconds, then trying again')
        sleep(10)
  else:
      print('Could not communitcate with nicehash server')
      return None,None
  #lyra2rev2_prof = float(prof_data['result']['stats'][14]['price'])
  #print(lyra2rev2_prof)

  for i in range(29):
     lyra2rev2_prof = float(prof_data['result']['stats'][i]['price'])
     #print(lyra2rev2_prof)

  prof2_data = json.load(urllib2.urlopen(prof2_url))
  for i in range(29):
     prof = prof2_data['result']['simplemultialgo'][i]['paying']
     algo_data = prof2_data['result']['simplemultialgo'][i]
     #print(algo_data)

  with open('1080ti.json', 'r') as handle:
      gpu = json.load(handle)


  #print(prof_data['result']['stats'][24]['price'])
  #print(prof2_data['result']['simplemultialgo'][24]['paying'])
  #print(gpu)
  #print(type(gpu))
  #print(len(gpu["AlgorithmSettings"]))
  max_prof=0
  best_algo=''
  port = 0
  for i in range(len(gpu["AlgorithmSettings"])):
     try:
       cc_name = gpu["AlgorithmSettings"][i]["ccminerAlgorithm"]
       nh_id = gpu["AlgorithmSettings"][i]["nicehashAlgorithmID"]
       rate = prof2_data['result']['simplemultialgo'][nh_id]['paying']
       speed = gpu["AlgorithmSettings"][i]["BenchmarkModes"][0]['Speed'][0]
       prof = float(rate)*float(speed)
       #print('----------------------------')
       #print(cc_name)
       #print(rate)
       #print(speed)
       #print(prof)
       if (prof > max_prof):
          max_prof = prof
          best_algo = cc_name
          #port = gpu["AlgorithmSettings"][i]["BenchmarkModes"][0]['port']
          port = prof2_data['result']['simplemultialgo'][nh_id]['port']
     except:
       pass
       #print('----------------------------')
       #print('Error processing ',cc_name)

  #print('----------------------------')
  #print(best_algo + ' IS THE MOST PROFITABLE!!')
  #print(max_prof)
  return best_algo,port
  
def run_process(exe):
    keep_running = True    
    p = subprocess.Popen(exe, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, shell=True)
    while(True):
      retcode = p.poll() #returns None while subprocess is running
      line = p.stdout.readline()
      yield line
      if(retcode is not None):
        break
      if (keep_running == False):
        p.kill()
        break

def monitor_thread(p, *args):
   print("Monitoring thread")
   print("Thread in monitor poll is: " + str(p.poll))  
   global accepted_work
   accepted_work = False
   while(True):
      sleep(0.1)
      line = p.stdout.readline()
      print(line)
      if (str.find(str.lower(line),'accept') > -1):
         print("A Share Has Been Accepted!")
         accepted_work = True
         time_accepted = time.time()
      #sleep(2)
      if (((p.poll() != None) and (p.poll() != 0))):
         print("monitor thread has detected that that the mining thread has exited")
         break
      #yield line

def get_miner(algo,port):
  if (algo == 'lyra2v2'):
     nh_algo = 'lyra2rev2'
  elif (algo == 'eth'):
     nh_algo = 'daggerhashimoto'
  else:
     nh_algo = algo
  if (algo == 'equihash'):
     exe = root_dir + 'zcash/miner nvidia-cuda-dev/--eexit 3 --intensity 64 64 64 64 64 64 64 --cuda_devices 0 1 2 3 4 5 6 --templimit 80 --server ' + str(nh_algo) + '.usa.nicehash.com --port ' + str(port) + ' --user ' + btc_address + '.' + rig_name + ' --pass x' + log_file
  elif (algo == 'neoscrypt'):
      exe = root_dir + 'ccminer/ccminer -r 0 -a ' + str(algo) + ' -o stratum+tcp://' + str(nh_algo) + '.usa.nicehash.com:' + str(port) + ' -O ' + btc_address + '.' + rig_name + ':x' + log_file
  elif (nh_algo == 'daggerhashimoto'):
      exe = root_dir + 'ethminer/ethminer -SP 2 -U -S ' + str(nh_algo) + '.usa.nicehash.com:' + str(port) + ' -O ' + btc_address + '.' + rig_name + ':x' + log_file
  else:
     exe = root_dir + 'ccminer/ccminer -r 0 -a ' + str(algo) + ' -o stratum+tcp://' + str(nh_algo) + '.usa.nicehash.com:' + str(port) + ' -O ' + btc_address + '.' + rig_name + ':x' + log_file
  return exe

def run():
  global accepted_work
  best_algo,port = get_algo()
  #Runimport threadouts, errs = proc.communicate(timeout=15)
  exe = get_miner(best_algo,port)
  print('running this shell command: ')
  print(exe)
  #miner = multiprocessing.Process(target = os.system, args = ([exe]))
  #miner = threading.Thread(target = miner_thread, args = (exe, 1))
  #miner = StoppableThread(target = miner_thread, args = (exe, 1))
  #miner.target = miner_thread~/Desktop/Revoswitcher
  #miner.args = (exe)
  #print(miner)
  #thread.start_new_thread(miner_thread, (exe,1))
  #miner.start()
  p = subprocess.Popen(exe, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, shell=True)
  #monitor_output(p)
  monitor = threading.Thread(target = monitor_thread, args = (p, 1))
  monitor.start()
  
  print('Poll of process: ' + str(p.poll()))
  sleep(1)
  #monitor.terminate()
  #print(type(p.stdout))?
  print('Started mining ' + best_algo)
  print('Process ID: ' + str(p.pid))
  print('Submitting shares for 1 minute before checking for a more profitable algorithm')
  for i in range (12):
     sleep(5)
     if (((p.poll() != None) and (p.poll() != 0))):
        print('Mining thread stopped by itself unexpectedly')
        print('Killing mining monitor')
        #--------------
        run()
  #sleep(300)
  #for i in range(300):
  #    line = p.stdout.readline()
  #    print(line) #yield line
  print('Finished for loop')
  while (True):
     new_algo,new_port = get_algo()
     if ((new_algo != best_algo) or ((p.poll() != None) and (p.poll() != 0))):
         if (p.poll() != None):
            print('Mining thread stopped by itself unexpectedly')
            #print('Trying to start a new mining thread')
            run()
            print('Rebooting the rig in 60 seconds!')
            sleep(60)
            os.system('sudo reboot')
         print(new_algo + ' is now more profitable')
         print('Killing current mining thread')
         print('Process poll: ' + str(p.poll()))
         print('Process ID: ' + str(p.pid))
         #try:
         #   p.send_signal(signal.SIGTERM)
         #except:
         #   print("couldn't send ctrl+c signal")
         #print(p.poll())
         #sleep(1)
         while (not accepted_work):
            print("Waiting for at least one share to be submitted")
            sleep(5)
         try:
            #p.send_signal(signal.SIGINT)
            #os.system('kill -SIGINT -' + str(p.pid))
            os.system('pkill -SIGINT -P ' + str(p.pid))
            os.system('kill ' + str(p.pid))
            p.terminate()
            p.kill()
         except:
            print("couldn't send interupt signal")
         sleep(1)
         print('Status of P: ' + str(p.poll()))
         best_algo = new_algo
         port = new_port
         exe = get_miner(best_algo,port)
         #miner = multiprocessing.Process(target = miner_thread, args = (exe, 1))
         print('--------------------------------------')
         print('Starting a new mining thread')
         p = subprocess.Popen(exe, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, shell=True)
         #monitor_output(p)
         monitor = threading.Thread(target = monitor_thread, args = (p, 1))
         monitor.start()
         print('Started mining '+ best_algo)
         sleep(.1)
         print('Process ID: ' + str(p.pid))
         print('Submitting shares for 1 minutes before checking for a more profitable algorithm')
         #miner.start()
         sleep(60)
     else:
         #print(p.stdout.readline())
         print(best_algo + ' is still the most profitable')
         #print(miner.is_alive())
         sleep(30)
 
  print('Nice Switcher Has Finished')
  #print('Now pausing to retain stdout')
  #sleep()
  #miner.terminate()
  #miner.join()
  #p.terminate()
  #miner.stop()
  #thread.exit()
  #print('Thread Exited')
  #print(threading.active_count()) 
  #exe = 'echo Butts'

def miner_thread(exe, *args):
   keep_running = True
   #call(exe, shell=True);
   p = subprocess.Popen(exe, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, shell=True)
   #while (True):
   #   if (!keep_running):
   #      p.terminate
   
   #os.system(exe);
def miner_thread(exe, *args):
  print('In Miner Thread')
  for line in run_process(exe):
    print line,
  return

print('Attempting to run overclock script')
os.system('./overclock.sh')

#try:
run()  
#except:
   #print('Finished the RUN() function')
   ##print('Trying to start a new mining thread')
   #print('Rebooting the rig in 60 seconds!')
   #sleep(60)
   #os.system('sudo reboot')
#thread = Thread(target = threaded_function, args = (10, ))
#thread.start()
#system('ccminer/ccminer -r 0 -a ' + str(best_algo) + ' -o stratum+tcp://' + str(best_algo) + '.usa.nicehash.com:' + str(port)' -O 1MGF8Q9L9PAggm5GTJSoefH8sZDsWWhGsT.frankenstein:x');

#def _json_object_hook(d): return namedtuple('X', d.keys())(*d.values())
#def json2obj(data): return json.loads(data, object_hook=_json_object_hook)
#data = json.load(urllib2.urlopen(url))
#response = request.POST
#user = FbApiUser(user_id = response['id'])
#user.name = response['name']
#user.username = response['username']
#user.save()
