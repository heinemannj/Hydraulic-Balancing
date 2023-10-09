# Hydraulic Balancing

Der unten beschriebene hydraulische Abgleich für Fußbodenheizungen wird **gemäß eines Rücklauftemperatur-Verfahrens** durchgeführt.

Durch den **Abgleich aller Heizschleifen auf die gleiche Rücklauf Mitteltemperatur** ist ein sehr genauer hydraulischer Abgleich möglich,
der die tatsächlichen Gegebenheiten der Anlage unter Berücksichtigung aller Gebäude- und Heizkreis-Einflussfaktoren widerspiegelt.

Durch eine laufende Analyse der Verläufe von Aussen-, Raum-, Vorlauf- und Rücklauftemperaturen und unter Berücksichtigung von Wettervorhersage-Daten wird zu jedem Zeitpunkt die optimale Fußbodentemperatur errechnet.
Diese Informationen werden im Regelbetrieb dann als Basis eines sich stetig anpassenden **dynamischen hydraulischen Abgleich** verwendet.

## Probleme bei konventionellen Berechnungsmethoden / Abgleichsverfahren / Setups

- Gerade im Bestand können die für eine genaue Berechnung notwendigen Rohrlängen, Rohquerschnitte und Verlegeabstände meist nur geschätzt werden
- Temperatur- und Druckverluste im Verteilsystem werden bei der Berechnung generell nur unzuläglich berücksichtigt

Durch den Einsatz von

- Fest eingestellter Durchflussbegrenzer
- Konventioneller On/Off Stellantriebe

ist ein konventioneller statischer hydraulischer Abgleich immer **nur für eine einzige Betriebssituation ausgelegt**:

- **VOLLLAST für ALLE Räume**.

Dies spiegelt aber die Realität nur sehr selten wieder.

## Dynamic Hydraulic Balancing

Ein **dynamischer hydraulischer Abgleich** passt dagegen den hydraulischen Abgleich für jede Betriebssituation dynamisch an.
Durch den Einsatz von **stufenlos einstellbaren Stellantrieben** werden die Durchflussmengen für jede Betriebssituation dynamisch angepasst.

Wenn es die Betriebssituation erlaubt, können Stellantriebe dadurch auch über den in diesem statischen Abgleich festgelegten Wert geöffnet werden.
In den meisten Betriebssituationen (Vollast ist sehr selten!) können Räume dadurch um ein vielfaches schneller aufgeheizt, Pumpenleistungen geringer dimensioniert und die Vorlauftemperatur deutlich reduziert werden.

# Voraussetzungen zum Start des hydraulischen Abgleichs
## Gleiche Raumtemperatur aller Räume gefolgt von Abkühlphase

Wichtigste Voraussetzung für ein erfolgreiches Resultat ist ein geeigneter Initialzustand der Fußbodenheizung.

Die Fußbodenheizung muss beim Start des hydraulischen Abgleichs in allen Räumen auf einem möglichst gleichen Temperaturniveau sein.
Geringe Unterschiede können während des hydraulischen Abgleichs ausgeglichen werden.
Jedoch funktioniert es NICHT, seit Tagen/Wochen unbeheizte Räume zusammen mit ständig beheizten Räumen abzugleichen.

Erfahrungsgemäß funktioniert die nachfolgende Vorgehensweise sehr gut:

- Heizen Sie alle Räume im Haus auf die gleiche Temperatur (z.B. 20°C).
Diese Temperatur muss für mindestens 24 Stunden gleichmäßig gehalten werden.
- Schalten Sie danach alle Räume für 24 Stunden aus.
Alternativ (z.B. bei sehr kalten Außentemperaturen) so lange ausschalten, bis jeder Raum um 2°C abgekühlt ist.

Es ist unumgänglich, diese Schritte vor dem Start des hydraulischen Abgleichs durchzuführen.
Das Ergebnis wird sonst nicht verwertbar sein.

## Durchflussmengenbegrenzer 100% öffnen (ausgenommen sehr kurze Heizschleifen)

Alle Durchflussmengenbegrenzer müssen vor dem Start des hydraulischen Abgleichs maximal geöffnet sein.

Die Durchflussmengenbegrenzer bei Räumen mit bekannt sehr kurzen Heizschleifen können etwas zugedreht werden.
Die Ventilöffnung sollte bei keinem Stellantrieb auf weniger als 25% begrenzt werden müssen.

## Außentemperaturen <10°C

Aufgrund mehrerer Effekte, lässt sich beim Rücklauftemperatur-Verfahren der hydraulische Abgleich einfacher und genauer durchführen, je kälter die Außentemperaturen sind.
Sofern Sie bei Plusgraden kein ausreichendes Ergebnis erhalten, wiederholen Sie den Abgleich also am Besten nochmal bei kälteren Außentemperaturen.

Über einer Außentemperatur von 10°C ist ein hydraulischer Abgleich mit dem Rücklauftemperatur-Verfahren nicht möglich.

## Heizungspumpe der Fußbodenheizung muss dauerhaft eingeschalten sein

Stellen Sie sicher, dass die Fußbodenheizungspumpe während des hydraulischen Abgleichs dauerhaft läuft.
Stellen Sie in der integrierten Steuerung Ihres Wärmeerzeugers die Pumpe bitte übergangsweise auf Dauerbetrieb.

## Ausreichende Vorlauftemperatur (auf Nachtabsenkung deaktivieren!)

Für die Dauer des hydraulischen Abgleichs muss eine ausreichende Vorlauftemperatur sichergestellt sein.
Der Wärmeerzeuger darf sich beispielsweise nicht in der Nachtabsenkung befinden.

## Weitere Einflüsse minimieren / ausschließen

Während des hydraulischen Abgleichs dürfen keine Fenster oder Türen geöffnet sein, und es dürfen keine zusätzlichen Wärmequellen (z.B. Kachelöfen) die Messungen verfälschen.
Ebenso sollten externe Effekte wie z.B. Sonneneinstrahlung durch Testdurchläufe nach Sonnenuntergang ausgeschlossen werden.

# Durchführung und Arbeitsschritte

Der hydraulische Abgleich über das Rücklauftemperatur-Verfahren erfolgt in folgenden aufeinander aufbauenden Schritten.

1) Automatischer statischer hydraulischer Abgleich
2) Dynamischer hydraulischer Maximalabgleich (DHMA) mit Maximaldurchfluss-Anpassung
3) Regelbetrieb mit Deep-Learning

## Schritt 1: Automatischer statischer hydraulischer Abgleich

Beim automatischen statischen hydraulischen Abgleich werden alle Heizkreisverteiler und alle Heizkreise des Gebäudes gleichzeitig einbezogen und untereinander valide mittels des Rücklauftemperatur-Verfahrens abgeglichen.
Die Durchflussmengen werden über stufenlos einstellbare Stellantriebe so lange begrenzt, bis alle Heizschleifen die gleiche Rücklauftemperatur aufweisen.

Hierbei werden in einem Testdurchlauf (z.B. 30 min) zeitgleich die Rücklauftemperaturen in allen Heizkreisen gemessen und in einem Diagramm dargestellt.
Nach jedem Testdurchlauf werden die Durchflussmengen der wärmsten Rückläufe begrenzt (durch Anpassung der Ventilöffnungen der stufenlos einstellbaren Stellantriebe) – so lange, bis alle Heizschleifen die gleiche Mitteltemperatur aufweisen.

1) Initialaktion
   Öffnung aller Ventile für beispielsweise 30 min um einige physikalisch bedingte Verzögerungen abzudecken.
   - Es dauert z.B. einige Minuten, bis das Controme Gateway das Öffnungssignal an die Stellantriebe sendet,
   - die Stellantriebe benötigen wiederum ein paar Minuten, um tatsächlich zu öffnen.
   - Des Weiteren sollten alle Heizschleifen zunächst für einige Minuten Durchfluss haben, bevor die Rücklauftemperaturen bewertet werden.
   - Darstellung aller Rücklauftemperaturen in einem Diagramm.
2) Start der ersten Testsequenz.
3) Nach Abschluss der beispielsweise 30 min Testsequenz werden die Ventilöffnungen der stufenlos einstellbaren Stellantriebe einmalig angepasst.
   - Nach jedem Durchlauf wird für jeden Sensor der Mittelwert berechnet.
   - Die Differenz aller Mittelwerte ergibt das Ergebnis des Durchlaufs.
   - NACH jedem Durchlauf werden die Ventilöffnungen der wärmsten Rückläufe verringert.
   - Die Maximalöffnungen werden für jedes Ventil auf der Geräteseite der Fußbodenheizungssteuerung(en)-PRO dargestellt.
   - Das AHA-Plugin passt also die dargestellten Maximalöffnungs-Werte (die Slider) am Ende jedes AHA-Durchlaufs automatisch an.
4) Start der nächsten Testsequenz mit den neuen verbesserten Ventilöffnungen (Maximalöffnungs-Werte).
5) Dieser Prozess wird so lange wiederholt, bis alle Heizschleifen eine Mitteltemperatur aufweisen, die um weniger als 2K voneinander abweicht.

**Wichtig**:
Die Ventilöffnung sollte bei keinem Stellantrieb auf weniger als 25% begrenzt werden müssen.
Diese Durchflussmengenbegrenzer müssen etwas zugedreht werden. 

**Bitte beachten**:
Während eines Durchlaufs selbst werden die Maximalöffnungen nicht angepasst.
Das Plugin wertet jeden Durchlauf am Ende aus und passt dann einmalig die einzelnen Maximalöffnungen an.
Es sind also IMMER mehrere Durchläufe notwendig, bis sich die Rücklauftemperaturen im gewünschten Bereich von 2K befinden.

## Schritt 2: Dynamischer hydraulischer Maximalabgleich mit Maximaldurchfluss-Anpassung

Die im zuvor beschriebenen automatischen statischen hydraulischen Abgleich ermittelten maximalen Öffnungswerte für jede Heizschleife sind ausschließlich 
für die Betriebssituation Vollast (“Alle Räume sollen aktuell mit maximaler und gleicher Menge an Wärmeenergie versorgt werden“) optimal.
Diese Betriebssituation ist jedoch sehr selten.

Der dynamische Abgleich Maximalabgleich (DHMA) berechnet deshalb aufbauend auf den im automatischen statischen hydraulischen Abgleich ermittelten Werten,
individuell zu jeder Betriebssituation die maximal mögliche Ventilöffnung für jede Heizschleife.

Der innovative DHMA-Regelalgorithmus berücksichtigt dabei alle aktuellen Betriebsinformationen und entscheidet intelligent für jede einzelne Heizschleife,
ob ein Ventil bei Bedarf über den im automatischen hydraulischen Abgleich (AHA) ermittelten Maximalwert geöffnet werden darf.
Smart-Heat OS stellt dabei gleichzeitig immer die Versorgung aller anderen Räume sicher.

- Dadurch können Aufheizzeiten stark verkürzt werden.
- Es wird bei gleicher Heizleistung eine geringere Vorlauftemperatur benötigt.
- Es ist weniger Leistung der Heizkreispumpe notwendig, da die Pumpe nicht gegen unnötig limitierte Ventile andrücken muss
  (Hinweis: Eine Differenzdruck-geregelte Pumpe adaptiert dies automatisch).

## Schritt 3: Regelbetrieb mit Deep-Learning

Das beschriebene Plugin “hydraulischer Abgleich” übergibt in der Folge laufend die maximal erlaubte Öffnung
jeder Heizschleife an den KI-Regelalgorithmus für Fußbodenheizungen.

Dieser analysiert mit Deep-Learning Methoden die Verläufe der Raum- und Rücklauftemperaturen und errechnet
daraus unter Berücksichtigung von Wettervorhersage-Daten zu jedem Zeitpunkt die optimale Fußbodentemperatur.
Entsprechend dem Ergebnis wird dann die tatsächliche Öffnung jedes Stellantriebs eingestellt.


https://www.controme.com/hydraulischer-abgleich/
https://support.controme.com/hydraulischer-abgleich/


# Außentemperatur bzw. witterungsgeführte Rücklauftemperaturregelung

http://www.bosy-online.de/Einstellen_der_Heizkurve.htm
https://www.haustechnikdialog.de/SHKwissen/2481/Ruecklauftemperaturregelung
https://www.haustechnikdialog.de/SHKwissen/341/Heizkurve

Bei einer Vorlauftemperaturreglung gibt es nur eine geringe Rückmeldung, was von den Heizflächen tatsächlich verbraucht wird.
Bei einer Rücklauftemperaturregelung kommt die Rückmeldung von den Heizflächen. Das Heizungswasser kommt kälter zurück,
wenn mehr verbraucht wird und die Regelung regelt entsprechend nach. Genauso ist es umgekehrt.
Bei diesem Regelverfahren wird der Rücklauf zur Führungsgröße. Die kontinuierliche Kontrolle der Rücklauftemperatur
ermöglicht Rückschlüsse über den Wärmebedarf der Heizungsanlage bzw. des Hauses.

Die Rücklaufsolltemperatur wird in Abhängigkeit der Außentemperatur eine ermittelt. Ein Regler schaltet den Brenner
mit einer 6 K großen Hysterese. Während der Brennerlaufzeit liegt die Vorlauftemperatur 15 K über der Rücklauftemperatur.
Wenn sich der Energiebedarf ändert, kann bei modulierenden Brennern die Modulation geändert werden.
Erreicht der Rücklauf die Ausschalttemperatur, wird der Brenner ausgeschaltet. Es beginnt die Auskühlphase des Heizungswassers.
Die Vorlauftemperatur fällt sehr schnell auf das Temperaturniveau des Rücklaufs ab. Wenn der Einschaltpunkt der Rücklauftemperatur
erreicht wird, kann der Brenner starten.

Die Grundlage für eine optimale Funktion einer Heizungsanlage ist ein fachgerechter hydraulischer Abgleich.
Wenn die Rücklauftemperatur langsam ansteigt, dann wird von der Heizungsanlage viel Wärme abgenommen. Die Thermostatventile sind geöffnet.
Es gibt wenig Fremdwärme. Steigt aber die Rücklauftemperatur schnell an, so ist der Wärmebedarf der Heizungsanlage geringer.
Hier sind einige Thermostatventile geschlossen, weil Fremdwärme vorhanden ist.
Fällt die Rücklauftemperatur schnell, fordert die Heizungsanlage viel Wärme an. Die Ventile sind offen.
Eine Energieeinsparung wird erreicht durch die
- Verringerung der Taktung
- Absenkung des Temperaturniveaus
- Nutzung interner und externe Wärmegewinne

Da dieses Regelungsprinzip in der Regel unbekannt ist bzw. nicht verstanden wird, wird es selten eingesetzt.
Hierbei ist das Verhalten der Heizflächen, die Wasservolumenströme und das richtige Einregulieren anders.
Eine Rücklauftemperaturregelung hat ein erhebliches Energieeinsparpotential, da sie sich dynamisch
dem tatsächlichen Verbrauch anpasst.
Dieses Prinzip funktioniert nur, wenn ein Hydraulischer Abgleich, und später ein Thermischer Abgleich, durchgeführt wurde.

Eine Lösung ist das Berechnen der Rücklaufheizkurve.
Abhängig von der Witterungstemperatur wird mittels einer Heizkurve eine Vorlauftemperatur für die jeweilige Gruppe (Heizkreis) errechnet.
Die errechnete Vorlauftemperatur kann mit einem einstellbaren Minimal- und Maximalwert begrenzt werden.
Die Rücklauftemperatur der Gruppe wird auf eine errechnete maximale Rücklauftemperatur begrenzt.
Diese maximale Rücklauftemperatur wird abhängig von der Witterungstemperatur mittels einer Heizkurve errechnet.
Wenn die gemessene Rücklauftemperatur höher als die errechnete maximale Rücklauftemperatur ist,
wird mittels eines PID-Regler ein Kompensationswert errechnet.
Hiermit wird die gewünschte Vorlauftemperatur der Gruppe gesenkt.
Das Ventil wird nun modulierend geschlossen, so dass die Rücklauftemperatur abnimmt.

Die Rücklaufheizkurve ist eine um die Spreizung reduzierte Vorlaufheizkurve, deshalb der Hydraulische Abgleich bzw. Thermische Abgleich bis zum Abwinken.
Wenn die Rücklauftemperatur sich ihrem Sollwert nähert kann man davon ausgehen, dass die Räume warm sind.
Mit modulierenden Brennern ist das die genialste Lösung, so laufen Brenner den ganzen Tag.
Bei einstufigen Brennern verlängert es die Laufzeiten und verhindert häufige Brennerstarts (Takten).

Die Heizung misst die Außentemperatur über einen Fühler und berechnet daraus über die Heizkurve einen Temperaturwert.

Die Controme Rücklaufregelung verwendet eine ebensolche Heizkurve,
um für jeden Raum die optimale Rücklauftemperatur zum Erreichen und Halten der gewünschten Raumtemperatur
in Abhängigkeit von der Außentemperatur zu ermitteln.

Die Heizkurve orientiert sich dabei prinzipiell an der im Wärmeproduzenten eingestellten Heizkurve.
Sie lässt sich aber für einzelne Räume individuell anpassen, um eine bestmögliche Regelung
für jeden Raum mit seinen Eigenheiten zu erreichen.

Die gemischte Regelung verwendet zusätzlich zu den Rücklaufsensoren einen Raumtemperatursensor.
In der gemischten Regelung wird die Heizung erst abgestellt, wenn die gewünschte Raumtemperatur tatsächlich erreicht ist. 

Aufgrund unterschiedlicher Leitungslängen und Durchflußstärken, reagieren Heizkreise unterschiedlich.
Dem tragen wir in der controme Rücklaufregelung Rechnung dadurch, dass sich jeder Raum individuell konfigurieren lässt.

Generell unterscheidet man zwei Fälle:
allgemein zu hohe/niedrige Temperatur
sich zu langsam/schnell verändernde Temperaturen

Der erste Fall lässt sich über die Solltemperatur des Raumes und ggf. eine Veränderung des Offsets der Heizkurve erreichen.
Zu langsame/schnelle Anpassung an die Außentemperatur lässt sich durch eine Veränderung der Neigung der Heizkurve erreichen.

FBx : Fussbodenheizkreis x
TV  : Vorlauftemp.
TR  : Rücklauftemp.
VS  : Volumenstrom

FB1 - Hauptlast: hoher VS, hohe RT
FB2 - Teilast  : kleiner VS, kleine RT
