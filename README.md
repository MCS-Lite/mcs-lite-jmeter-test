# mcs-lite-jmeter-test
Use JMeter script to do API functional testing and server load/stability testing

## Setup Environment
1. To install latest version of [JMeter](http://jmeter.apache.org/download_jmeter.cgi).
2. To install the following JMeter plugins
	
	* [Throughput Shaping Timer](https://jmeter-plugins.org/wiki/ThroughputShapingTimer/)  	
	* [Transactions per Second](https://jmeter-plugins.org/wiki/TransactionsPerSecond/)
	* [Servers Performance Monitoring](https://jmeter-plugins.org/wiki/PerfMon/)
	* [WebSocket Sampler by Maciej Zaleski](https://github.com/maciejzaleski/JMeter-WebSocketSampler/wiki)
	
	All the plugins can all be managed by [Jmeter Plugins Manager](https://jmeter-plugins.org/wiki/PluginsManager/).
	
3. To extend JMeter library support for JSON by adding 3 *.jar files from [minimal-json](https://github.com/ralfstx/minimal-json/releases) to ${JMeterRoot}/lib/ext folder.

## Get Started
1. Launch ApacheJMeter.jar
2. Open SmokeTest_lite.jmx and execute this script in JMeter.

### Functional Testing
You can see the test result in **View Results Tress**

### Load/Capacity Testing
Please enable **Throughput Shaping Timer**, **Transaction per Second** and **PerfMon Metric Collector**
