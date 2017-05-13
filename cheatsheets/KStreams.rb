cheatsheet do
  title 'KStreams'               # Will be displayed by Dash in the docset list
  docset_file_name 'kstreams'    # Used for the filename of the docset
  keyword 'kafka-streams'             # Used as the initial search keyword (listed in Preferences > Docsets)
  # resources 'resources_dir'  # An optional resources folder which can contain images or anything else

  introduction 'Kafka Streams: A quick overview of the KStreams API'

  # A cheat sheet must consist of categories
  category do
 	id "Terminal Nodes"
 	
 	entry do
 	  name 'print'
 	  notes %|Output debugging style information to STDOUT. [Documentation](http://docs.confluent.io/current/streams/javadocs/org/apache/kafka/streams/kstream/KStream.html#print--)|
 	end
 	
 	entry do
 	  name 'to'
 	  notes %|send output to Kafka topic|
 	end
 	
 	entry do
 	  name 'foreach'
 	  notes %|Consume data and discard results (ie useful if you're writing a kafka-to-* service). [Documentation](http://docs.confluent.io/current/streams/javadocs/org/apache/kafka/streams/kstream/KStream.html#foreach-org.apache.kafka.streams.kstream.ForeachAction-)|
 	end
 	
 	entry do
 	  name 'writeAsText'
 	  notes %|Output debugging style information to FILE. [Documentation](http://docs.confluent.io/current/streams/javadocs/org/apache/kafka/streams/kstream/KStream.html#writeAsText-java.lang.String-)|
 	end
  end
  
  category do
    id 'Map'  # Must be unique and is used as title of the category
  
    entry do
      name 'flatMap'
      notes %|iterator returns new object with new infor (both key and value can be altered, 0 or more records returned). [Documentation](http://docs.confluent.io/current/streams/javadocs/org/apache/kafka/streams/kstream/KStream.html#flatMap-org.apache.kafka.streams.kstream.KeyValueMapper-)|
    end
    
    entry do
      name 'flatMapValue'
      notes %|iterator returns new value for same keys. [Documentation](http://docs.confluent.io/current/streams/javadocs/org/apache/kafka/streams/kstream/KStream.html#flatMapValues-org.apache.kafka.streams.kstream.ValueMapper-)|
    end
    
    entry do
      name 'map'
      notes %|iterator returns new object with new infor (both key and value can be altered, 0 or more records returned). [Documentation](http://docs.confluent.io/current/streams/javadocs/org/apache/kafka/streams/kstream/KStream.html#map-org.apache.kafka.streams.kstream.KeyValueMapper-)|
    end
    
    entry do
      name 'mapValues'
      notes %|iterator returns new value for same keys. [Documentation](http://docs.confluent.io/current/streams/javadocs/org/apache/kafka/streams/kstream/KStream.html#mapValues-org.apache.kafka.streams.kstream.ValueMapper-)|
    end
  end
  
  category do
    id 'Joins'  # Must be unique and is used as title of the category
  
    entry do
      name 'join'
      notes %|joins two streams where key == key. Subclass ValueJoiner<V1, V2, R> to output joined object. [Documentation](http://docs.confluent.io/current/streams/javadocs/org/apache/kafka/streams/kstream/KStream.html#join-org.apache.kafka.streams.kstream.GlobalKTable-org.apache.kafka.streams.kstream.KeyValueMapper-org.apache.kafka.streams.kstream.ValueJoiner-)|
    end
    
    entry do
      name 'outerJoin'
      notes %|join but don't require BOTH streams to have record. [Documentation](http://docs.confluent.io/current/streams/javadocs/org/apache/kafka/streams/kstream/KStream.html#outerJoin-org.apache.kafka.streams.kstream.KStream-org.apache.kafka.streams.kstream.ValueJoiner-org.apache.kafka.streams.kstream.JoinWindows-)|
    end
    
    entry do
      name 'leftJoin'
      notes %|if 'calling' or both streams have matching records, merge. If only "other" stream does, NOPE. [Documentation](http://docs.confluent.io/current/streams/javadocs/org/apache/kafka/streams/kstream/KStream.html#leftJoin-org.apache.kafka.streams.kstream.GlobalKTable-org.apache.kafka.streams.kstream.KeyValueMapper-org.apache.kafka.streams.kstream.ValueJoiner-)|
    end    
  end

  category do
    id 'Data Flow'  # Must be unique and is used as title of the category
  
    entry do
      name 'filter'
      notes %|if lambda function returns true, record proceeds into pipeline. [Documentation](http://docs.confluent.io/current/streams/javadocs/org/apache/kafka/streams/kstream/KStream.html#filter-org.apache.kafka.streams.kstream.Predicate-)|
    end
    
    entry do
      name 'selectKey'
      notes %|re-keys Kafka records. [Documentation](http://docs.confluent.io/current/streams/javadocs/org/apache/kafka/streams/kstream/KStream.html#selectKey-org.apache.kafka.streams.kstream.KeyValueMapper-)|
    end
    
    entry do
      name 'branch'
      notes %|Takes a vargs of Predicates. Will return records outputted to the Predicate's topic. [Documentation](http://docs.confluent.io/current/streams/javadocs/org/apache/kafka/streams/kstream/KStream.html#branch-org.apache.kafka.streams.kstream.Predicate...-)|
    end
    
    entry do
      name 'through'
      notes %|Produces to a topic. The resulting kstream will be a producer of that same topic. Could be used to reparition data. [Documentation](http://docs.confluent.io/current/streams/javadocs/org/apache/kafka/streams/kstream/KStream.html#through-org.apache.kafka.common.serialization.Serde-org.apache.kafka.common.serialization.Serde-org.apache.kafka.streams.processor.StreamPartitioner-java.lang.String-)|
    end
    
    entry do
      name 'transformValues'
      notes %|takes ValueTransformerSupplier, gets / sets StateStore. [Documentation](http://docs.confluent.io/current/streams/javadocs/org/apache/kafka/streams/kstream/KStream.html#transformValues-org.apache.kafka.streams.kstream.ValueTransformerSupplier-java.lang.String...-)|
    end
    
  end
  
end
