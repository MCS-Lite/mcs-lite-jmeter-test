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
Launch ApacheJMeter.jar, which is under ${JMeterRoot}/bin folder.


### Functional Testing
The test cases are in **SmokeTest_lite.jmx**.
You can see the test result in **View Results Tress**.

### Load/Capacity Testing
The test cases are in **PerformanceTest_lite.jmx**.
You can see the test result in **Transaction per Second** and **PerfMon Metric Collector**.
