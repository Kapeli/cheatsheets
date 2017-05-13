cheatsheet do
  title 'KStreams'
  docset_file_name 'KStreams'
  keyword 'kstreams'
  source_url 'http://cheat.kapeli.com'

  category do
 	id "Terminal Nodes"
 	
 	entry do
 	  name '
 	  ```
 	  print
 	  ```'
 	  notes %|Output debugging style information to STDOUT. [Documentation](http://docs.confluent.io/current/streams/javadocs/org/apache/kafka/streams/kstream/KStream.html#print--).|
 	end
 	
 	entry do
 	  name '
 	  ```
 	  to
 	  ```'
 	  notes %|Send output to Kafka topic.|
 	end
 	
 	entry do
 	  name '
 	  ```
 	  foreach
 	  ```'
 	  notes %|Consume data and discard results (useful if you're writing a kafka-to-* service). [Documentation](http://docs.confluent.io/current/streams/javadocs/org/apache/kafka/streams/kstream/KStream.html#foreach-org.apache.kafka.streams.kstream.ForeachAction-).|
 	end
 	
 	entry do
 	  name '
 	  ```
 	  writeAsText
 	  ```'
 	  notes %|Output debugging style information to FILE. [Documentation](http://docs.confluent.io/current/streams/javadocs/org/apache/kafka/streams/kstream/KStream.html#writeAsText-java.lang.String-).|
 	end
  end
  
  category do
    id 'Map'  # Must be unique and is used as title of the category
  
    entry do
      name '
 	  ```
 	  flatMap
 	  ```'
      notes %|Iterator returns new object with new infor (both key and value can be altered, 0 or more records returned). [Documentation](http://docs.confluent.io/current/streams/javadocs/org/apache/kafka/streams/kstream/KStream.html#flatMap-org.apache.kafka.streams.kstream.KeyValueMapper-).|
    end
    
    entry do
      name '
 	  ```
 	  flatMapValue
 	  ```'
      notes %|Iterator returns new value for same keys. [Documentation](http://docs.confluent.io/current/streams/javadocs/org/apache/kafka/streams/kstream/KStream.html#flatMapValues-org.apache.kafka.streams.kstream.ValueMapper-).|
    end
    
    entry do
      name '
 	  ```
 	  map
 	  ```'
      notes %|Iterator returns new object with new infor (both key and value can be altered, 0 or more records returned). [Documentation](http://docs.confluent.io/current/streams/javadocs/org/apache/kafka/streams/kstream/KStream.html#map-org.apache.kafka.streams.kstream.KeyValueMapper-).|
    end
    
    entry do
      name '
 	  ```
 	  mapValues
 	  ```'
      notes %|Iterator returns new value for same keys. [Documentation](http://docs.confluent.io/current/streams/javadocs/org/apache/kafka/streams/kstream/KStream.html#mapValues-org.apache.kafka.streams.kstream.ValueMapper-).|
    end
  end
  
  category do
    id 'Joins'
  
    entry do
      name '
 	  ```
 	  join
 	  ```'
      notes %|Joins two streams where key == key. Subclass ValueJoiner<V1, V2, R> to output joined object. [Documentation](http://docs.confluent.io/current/streams/javadocs/org/apache/kafka/streams/kstream/KStream.html#join-org.apache.kafka.streams.kstream.GlobalKTable-org.apache.kafka.streams.kstream.KeyValueMapper-org.apache.kafka.streams.kstream.ValueJoiner-).|
    end
    
    entry do
      name '
 	  ```
 	  outerJoin
 	  ```'
      notes %|Join but don't require BOTH streams to have record. [Documentation](http://docs.confluent.io/current/streams/javadocs/org/apache/kafka/streams/kstream/KStream.html#outerJoin-org.apache.kafka.streams.kstream.KStream-org.apache.kafka.streams.kstream.ValueJoiner-org.apache.kafka.streams.kstream.JoinWindows-).|
    end
    
    entry do
      name '
 	  ```
 	  leftJoin
 	  ```'
      notes %|If 'calling' or both streams have matching records, merge. If only "other" stream does, NOPE. [Documentation](http://docs.confluent.io/current/streams/javadocs/org/apache/kafka/streams/kstream/KStream.html#leftJoin-org.apache.kafka.streams.kstream.GlobalKTable-org.apache.kafka.streams.kstream.KeyValueMapper-org.apache.kafka.streams.kstream.ValueJoiner-).|
    end    
  end

  category do
    id 'Data Flow'
  
    entry do
      name '
 	  ```
 	  filter
 	  ```'
      notes %|If lambda function returns true, record proceeds into pipeline. [Documentation](http://docs.confluent.io/current/streams/javadocs/org/apache/kafka/streams/kstream/KStream.html#filter-org.apache.kafka.streams.kstream.Predicate-).|
    end
    
    entry do
      name '
 	  ```
 	  selectKey
 	  ```'
      notes %|Re-keys Kafka records. [Documentation](http://docs.confluent.io/current/streams/javadocs/org/apache/kafka/streams/kstream/KStream.html#selectKey-org.apache.kafka.streams.kstream.KeyValueMapper-).|
    end
    
    entry do
      name '
 	  ```
 	  branch
 	  ```'
      notes %|Takes a vargs of Predicates. Will return records outputted to the Predicate's topic. [Documentation](http://docs.confluent.io/current/streams/javadocs/org/apache/kafka/streams/kstream/KStream.html#branch-org.apache.kafka.streams.kstream.Predicate...-).|
    end
    
    entry do
      name '
 	  ```
 	  through
 	  ```'
      notes %|Produces to a topic. The resulting kstream will be a producer of that same topic. Could be used to reparition data. [Documentation](http://docs.confluent.io/current/streams/javadocs/org/apache/kafka/streams/kstream/KStream.html#through-org.apache.kafka.common.serialization.Serde-org.apache.kafka.common.serialization.Serde-org.apache.kafka.streams.processor.StreamPartitioner-java.lang.String-).|
    end
    
    entry do
      name '
 	  ```
 	  transformValues
 	  ```'
      notes %|Takes ValueTransformerSupplier, gets / sets StateStore. [Documentation](http://docs.confluent.io/current/streams/javadocs/org/apache/kafka/streams/kstream/KStream.html#transformValues-org.apache.kafka.streams.kstream.ValueTransformerSupplier-java.lang.String...-).|
    end
    
  end
  
end
