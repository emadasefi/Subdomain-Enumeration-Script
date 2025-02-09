Subdomain Enumeration Script
====================================
The script automates the process of discovering subdomains for a given domain. It takes a domain name and a wordlist file as input. The script reads each line from the wordlist, prepends it to the domain name to form a potential subdomain, and then uses curl to check if the subdomain is reachable. The results are presented in a formatted table, indicating the row number, subdomain name, and its status (whether it exists or not). A timeout is implemented to avoid indefinite waiting for unresponsive subdomains.
<br>


## 🌟 Features
<li><strong>Subdomain Discovery:</strong> Enumerates subdomains by combining words from a provided wordlist with the target domain.</li>
<li><strong>Reachability Check:</strong> Verifies if a discovered subdomain is reachable by sending an HTTP HEAD request using curl.</li>
<li><strong>Timeout Implementation:</strong> Uses timeout to limit the execution time of curl requests, preventing indefinite delays when a subdomain is unresponsive.</li>
<li><strong>Formatted Output:</strong> Presents the results in a user-friendly, formatted table, including a row number, the full subdomain, and its status (Exists if reachable).</li>
<li><strong>Error Handling:</strong> Checks for the correct number of arguments and the existence of the wordlist file, providing informative error messages if necessary.</li>
<br>


## 💡 Run the script
<li>Execute the script with the target domain and the wordlist file as arguments. The command syntax is:</li>
<div class="highlight highlight-source-shell notranslate position-relative overflow-auto" dir="auto"><pre>./subdomain_checker.sh example.com wordlist_file </pre></div>
<br>
 


## 🎯 Example Output
<div class="highlight highlight-source-shell notranslate position-relative overflow-auto" dir="auto"><pre>
-----------------------------------------------------
| Row  | Domain Name                    | Status                  |
-----------------------------------------------------
| 1    | www.example.com              | Exists                    |
| 2    | mail.example.com             | Exists                    |
-----------------------------------------------------
</pre></div>



▚   This script performs subdomain enumeration for a specified domain using a provided wordlist and checks the reachability of discovered subdomains.
<br>


## — Feedback ❤️—
Thank you for choosing the Subdomain Enumeration Script! I hope it meets your needs effectively.<br>
Please leave a comment if you have any comments, suggestions or problems.
