from xml.dom.minidom import parse
import xml.dom.minidom

print("Jay Rathod T127")

# Open XML document using minidom parser
DOMTree = xml.dom.minidom.parse("Vibes_Events.xml")

collection = DOMTree.documentElement
if collection.hasAttribute("Vibes"):
    print("Root element :",collection.getAttribute("Vibes"))
   

# Get all the entries from Events
Vibes_Events = collection.getElementsByTagName("Participant")

# Print detail of each Registration.
for VE in Vibes_Events:
    print("\n*****Vibes Registrations*****\n")
    if VE.hasAttribute("Name"):
        print("Name : %s" % VE.getAttribute("Name"))
    Chess = VE.getElementsByTagName('Chess')[0]
    print("Chess : %s" % Chess.childNodes[0].data)
    Valorant = VE.getElementsByTagName('Valorant')[0]
    print("Valorant : %s" % Valorant.childNodes[0].data)
    Cec = VE.getElementsByTagName('Cec')[0]
    print("Cec : %s" % Cec.childNodes[0].data)
    DPM = VE.getElementsByTagName('DPM')[0]
    print("DPM : %s" % DPM.childNodes[0].data)
    Payment = VE.getElementsByTagName('Payment_Status')[0]
    print("Payment : %s" % Payment.childNodes[0].data)
