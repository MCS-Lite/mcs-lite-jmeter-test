# mcs-lite-jmeter-test
Use JMeter script to do API functional testing and server load/stability testing

## Setup Environment
1. To install [JMeter 2.13](https://archive.apache.org/dist/jmeter/binaries/apache-jmeter-2.13.zip).
2. To install the following JMeter plugins
	
	* [Throughput Shaping Timer](https://jmeter-plugins.org/wiki/ThroughputShapingTimer/)  	
	* [3 Basic Graphs](https://jmeter-plugins.org/wiki/TransactionsPerSecond/)
	* [Servers Performance Monitoring](https://jmeter-plugins.org/wiki/PerfMon/)
	* [WebSocket Sampler by Maciej Zaleski](https://github.com/maciejzaleski/JMeter-WebSocketSampler/wiki)
	
	All the plugins can all be managed by [Jmeter Plugins Manager](https://jmeter-plugins.org/wiki/PluginsManager/).
	
3. To extend JMeter library support for JSON by adding 3 minimal-json-0.9.4*.jar files from [minimal-json](https://github.com/ralfstx/minimal-json/releases) to ${JMeterRoot}/lib/ext folder.

## Get Started
1. Launch ApacheJMeter.jar, which is under ${JMeterRoot}/bin folder.
2. Open the test script in JMeter and modify the user variable, **envVariables_local**, to fit your test environment.

### Functional Testing
The test cases are in **SmokeTest_lite.jmx**.
You can see the test result in **View Results Tress**.

### Load/Capacity Testing
The test cases are in **PerformanceTest_lite.jmx**.
You can see the test result in **Transaction per Second** and **PerfMon Metric Collector**.

Suggest to execute this performance test script in non-GUI mode with command 

```
 ${JMeterRoot}/bin/jmeter -n -t PerformanceTest_lite.jmx -l LogFile.jtl
```

Here are some userful practices while doing performance testing via JMeter: [9 Easy Solutions for a JMeter Load Test “Out of Memory” Failure](https://www.blazemeter.com/blog/9-easy-solutions-jmeter-load-test-%E2%80%9Cout-memory%E2%80%9D-failure)
