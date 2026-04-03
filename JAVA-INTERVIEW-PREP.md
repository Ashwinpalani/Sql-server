JAVA INTERVIEW PREPARATION
This document contains a comprehensive list of Java interview questions categorized by topic, including frequency levels, ideal answers, and the top 10 most repeated questions for candidates with 2-5 years of experience targeting companies like TCS, Infosys, Wipro, Amazon, Google, and Flipkart.

1. Core Java
1.1 OOP Concepts
Question: What are the main principles of OOP?

Frequency Level: Very High

Ideal Answer: The main principles of OOP are Encapsulation, Abstraction, Inheritance, and Polymorphism.

Question: What is the difference between abstraction and encapsulation?

Frequency Level: High

Ideal Answer: Abstraction hides implementation complexity using abstract classes or interfaces. Encapsulation hides data by making fields private and providing public getters and setters.

Question: What is inheritance? What are its types in Java?

Frequency Level: High

Ideal Answer: Inheritance allows a child class to acquire properties of a parent class. Types are single inheritance, multilevel inheritance, and hierarchical inheritance. Java does not support multiple inheritance with classes due to the diamond problem.

Question: What is polymorphism? Give real-world examples.

Frequency Level: High

Ideal Answer: Polymorphism means many forms. It includes compile-time polymorphism (method overloading) and runtime polymorphism (method overriding). Example: A person can be a father, an employee, and a citizen at the same time.

Question: What is method overloading vs method overriding?

Frequency Level: Very High

Ideal Answer: Method overloading occurs in the same class with same method name but different parameters, resolved at compile time. Method overriding occurs in inheritance with same method signature but different implementation, resolved at runtime.

Question: Can we override a static method?

Frequency Level: High

Ideal Answer: No. Static methods belong to the class, not objects. They are resolved at compile time, so it is method hiding, not overriding.

Question: Can we override a private method?

Frequency Level: Medium

Ideal Answer: No. Private methods are not visible to child classes, so they cannot be overridden.

Question: What is the diamond problem in Java?

Frequency Level: High

Ideal Answer: The diamond problem occurs when a class inherits from two classes that have the same method. Java avoids this by not allowing multiple inheritance with classes. With Java 8 default methods in interfaces, you resolve it by overriding or using super.interface.method().

Question: What is a constructor? Types of constructors?

Frequency Level: High

Ideal Answer: A constructor is a special method invoked when an object is created. Types are default constructor (no-arg), parameterized constructor, and copy constructor. Constructors have no return type and must have the same name as the class.

Question: Can a constructor be private? When is it useful?

Frequency Level: Medium

Ideal Answer: Yes. Private constructors are used in the Singleton pattern to restrict object creation, in utility classes with only static methods, and in factory patterns to control instantiation.

Question: What is the difference between a constructor and a method?

Frequency Level: Medium

Ideal Answer: A constructor has no return type, its name equals the class name, and it is called automatically at object creation once. A method has a return type, can have any name, and is called explicitly multiple times.

Question: What is the 'this' keyword?

Frequency Level: High

Ideal Answer: 'this' refers to the current class instance. It is used to differentiate instance variables from parameters, call the current class constructor using this(), return the current instance, or pass the current object as a method parameter.

Question: What is the 'super' keyword?

Frequency Level: High

Ideal Answer: 'super' refers to the parent class. It is used to access parent class variables and methods, call the parent constructor using super(), and differentiate between parent and child members when names conflict.

Question: What is the difference between this() and super()?

Frequency Level: Medium

Ideal Answer: this() calls the current class constructor, while super() calls the parent class constructor. Both must be the first statement in a constructor, so they cannot coexist in the same constructor.

Question: What is method hiding?

Frequency Level: Low

Ideal Answer: Method hiding occurs when a child class defines a static method with the same signature as a static method in the parent class. The parent method is hidden, not overridden, and which method is called depends on the reference type, not the object type.

Question: What is a class vs an object?

Frequency Level: High

Ideal Answer: A class is a blueprint or template that defines properties and behaviors. An object is an instance of a class created in memory. One class can have multiple objects.

Question: What is the difference between composition and inheritance?

Frequency Level: Medium

Ideal Answer: Inheritance represents an "is-a" relationship (Dog is an Animal). Composition represents a "has-a" relationship (Car has an Engine). Composition provides more flexibility and is preferred over inheritance for code reuse.

Question: What is cohesion and coupling?

Frequency Level: Medium

Ideal Answer: Cohesion refers to how focused a class is on a single responsibility (high cohesion is good). Coupling refers to how dependent classes are on each other (low coupling is good). Loose coupling with high cohesion is the goal.

Question: What is the meaning of "is-a" and "has-a" relationships?

Frequency Level: Medium

Ideal Answer: "is-a" represents inheritance (Dog is an Animal). "has-a" represents composition or aggregation (Car has an Engine). "is-a" is tightly coupled, while "has-a" is loosely coupled.

Question: Can we create an object of an abstract class?

Frequency Level: High

Ideal Answer: No, you cannot instantiate an abstract class directly. You can only create objects of concrete subclasses that implement all abstract methods.

Question: Can we create an object of an interface?

Frequency Level: High

Ideal Answer: No, interfaces cannot be instantiated directly. You can create an anonymous inner class or use a lambda expression (for functional interfaces) to provide implementation.

Question: What is the difference between shallow copy and deep copy?

Frequency Level: Medium

Ideal Answer: Shallow copy copies the object references, so changes to nested objects affect both copies. Deep copy creates completely independent copies of all objects, including nested ones.

1.2 Data Types
Question: What are the primitive data types in Java?

Frequency Level: High

Ideal Answer: There are 8 primitive types: byte (1 byte), short (2), int (4), long (8), float (4), double (8), char (2), and boolean (1 bit, size not precisely defined).

Question: What is the difference between int and Integer?

Frequency Level: High

Ideal Answer: int is a primitive data type. Integer is a wrapper class that can hold an int value and provides utility methods. Integer objects can be used in Collections, can be null, and support autoboxing/unboxing.

Question: What is autoboxing and unboxing?

Frequency Level: High

Ideal Answer: Autoboxing is automatic conversion of a primitive to its wrapper class (int to Integer). Unboxing is automatic conversion of a wrapper to its primitive (Integer to int). Introduced in Java 5.

Question: What is the default value of a boolean variable?

Frequency Level: Medium

Ideal Answer: false for instance variables. Local variables must be initialized before use and have no default value.

Question: What is the size of char in Java?

Frequency Level: Medium

Ideal Answer: 2 bytes (16 bits) because Java uses Unicode (UTF-16) to support international characters, not ASCII.

Question: What is the difference between float and double?

Frequency Level: Medium

Ideal Answer: float is 4 bytes (32 bits) with 6-7 significant decimal digits. double is 8 bytes (64 bits) with 15-16 significant decimal digits. double has more precision and is the default for floating-point literals.

Question: What is type casting? Types of casting?

Frequency Level: Medium

Ideal Answer: Type casting is converting one data type to another. Implicit casting (widening) happens automatically from smaller to larger types. Explicit casting (narrowing) requires manual conversion and may lose data.

Question: What is the difference between primitive and reference types?

Frequency Level: High

Ideal Answer: Primitives store actual values in stack memory. Reference types store memory addresses (pointing to objects in heap). Primitives cannot be null, reference types can. Primitives have default values, reference types default to null.

1.3 Keywords
Question: What is the purpose of the 'static' keyword?

Frequency Level: Very High

Ideal Answer: 'static' indicates that a member belongs to the class itself, not to instances. Static variables are shared across all objects. Static methods can be called without creating an object. Static blocks execute once when the class is loaded.

Question: What is a static block? When is it executed?

Frequency Level: Medium

Ideal Answer: A static block is executed once when the class is first loaded into memory, before any object creation and before the main method. It is used for static initialization.

Question: Can we have static methods in an interface?

Frequency Level: Medium

Ideal Answer: Yes, from Java 8 onwards, interfaces can have static methods. They are not inherited by implementing classes and must be called using the interface name.

Question: What is the purpose of the 'final' keyword?

Frequency Level: Very High

Ideal Answer: 'final' can be used with variables (makes them constants, value cannot change), methods (prevents overriding), and classes (prevents inheritance). All three usages provide immutability and security.

Question: What is a final class?

Frequency Level: High

Ideal Answer: A final class cannot be extended (inherited). Examples: String, Integer, and other wrapper classes. It is used for immutability and security.

Question: What is a final method?

Frequency Level: Medium

Ideal Answer: A final method cannot be overridden by subclasses. It ensures the method implementation remains unchanged in all child classes.

Question: What is a final variable?

Frequency Level: Medium

Ideal Answer: A final variable can be assigned only once. For primitives, the value cannot change. For references, the reference cannot change (but the object's internal state can change unless the class is immutable).

Question: What is a blank final variable?

Frequency Level: Low

Ideal Answer: A blank final variable is declared as final but not initialized at declaration. It must be initialized in every constructor or in an instance initializer block.

Question: What is the purpose of the 'abstract' keyword?

Frequency Level: High

Ideal Answer: 'abstract' is used with classes and methods. An abstract class cannot be instantiated. An abstract method has no body and must be implemented by concrete subclasses.

Question: Can an abstract class have a constructor?

Frequency Level: High

Ideal Answer: Yes, abstract classes can have constructors. They are called when a concrete subclass is instantiated, using super() to initialize abstract class fields.

Question: What is the purpose of the 'synchronized' keyword?

Frequency Level: High

Ideal Answer: 'synchronized' provides thread safety by allowing only one thread to execute a method or block at a time. It acquires a lock on the object (instance method) or class (static method).

Question: What is the purpose of the 'volatile' keyword?

Frequency Level: High

Ideal Answer: 'volatile' ensures visibility of changes across threads. It prevents thread caching of the variable, forcing reads from main memory. It does not guarantee atomicity.

Question: What is the purpose of the 'transient' keyword?

Frequency Level: Medium

Ideal Answer: 'transient' indicates that a field should not be serialized. When the object is serialized, transient fields are skipped and set to default values when deserialized.

Question: What is the purpose of the 'native' keyword?

Frequency Level: Low

Ideal Answer: 'native' indicates that a method is implemented in platform-dependent code, usually C or C++. It is used for performance-critical operations or accessing system-level features.

Question: What is the purpose of the 'strictfp' keyword?

Frequency Level: Low

Ideal Answer: 'strictfp' ensures floating-point calculations produce the same result on all platforms by following IEEE 754 standards strictly.

Question: What is the purpose of the 'assert' keyword?

Frequency Level: Low

Ideal Answer: 'assert' is used for debugging to test assumptions. It throws an AssertionError if the condition is false. Assertions are disabled by default and enabled with -ea flag.

Question: What is the purpose of the 'enum' keyword?

Frequency Level: Medium

Ideal Answer: 'enum' defines a fixed set of constants. Enums are type-safe, can have fields, constructors, and methods. They implicitly extend java.lang.Enum.

Question: Can we use 'this' in a static context?

Frequency Level: Medium

Ideal Answer: No. 'this' refers to the current instance, but static methods and blocks do not have an instance context. Trying to use 'this' in static context causes a compilation error.

Question: Can we use 'super' in a static context?

Frequency Level: Medium

Ideal Answer: No. 'super' refers to the parent instance, but static methods and blocks do not have an instance context. Using 'super' in static context causes a compilation error.

1.4 Strings
Question: Why is String immutable in Java?

Frequency Level: Very High

Ideal Answer: String is immutable for security (avoid modification of classloader paths, database URLs), caching (String pool works efficiently), thread safety (no synchronization needed), and hashcode caching (consistent hashcode for HashMap keys).

Question: What is the String Pool?

Frequency Level: High

Ideal Answer: The String Pool (or String Intern Pool) is a special memory area in the heap where Java stores literal strings. When a new string literal is created, JVM checks the pool first and reuses the existing object if found, saving memory.

Question: What is the difference between creating String with 'new' and literal?

Frequency Level: High

Ideal Answer: String literal (String s = "hello") creates or reuses object from String Pool. String with 'new' (String s = new String("hello")) creates a new object in heap regardless of pool content. Use intern() to move to pool.

Question: What is the difference between String, StringBuilder, and StringBuffer?

Frequency Level: Very High

Ideal Answer: String is immutable, thread-safe, slow for modifications. StringBuffer is mutable, thread-safe (synchronized), moderate speed. StringBuilder is mutable, not thread-safe, fastest. Use StringBuilder for single-threaded string manipulation.

Question: What is the difference between StringBuffer and StringBuilder?

Frequency Level: High

Ideal Answer: Both are mutable. StringBuffer methods are synchronized (thread-safe but slower). StringBuilder methods are not synchronized (not thread-safe but faster). Use StringBuilder in single-threaded scenarios.

Question: How many objects are created: String s = new String("abc")?

Frequency Level: Medium

Ideal Answer: Two objects - one in the String Pool (if not already present) and one in heap memory. The variable s references the heap object.

Question: What is the intern() method in String?

Frequency Level: Medium

Ideal Answer: intern() returns a canonical representation from the String Pool. If the pool contains the string, it returns the pool reference; otherwise, it adds the string to the pool and returns it.

Question: What is the difference between equals() and == for Strings?

Frequency Level: High

Ideal Answer: '==' compares memory references (whether both variables point to the same object). equals() compares the actual content (sequence of characters). Always use equals() for string content comparison.

Question: What is the difference between String, StringBuffer, and StringBuilder in terms of performance?

Frequency Level: Medium

Ideal Answer: StringBuilder is fastest, StringBuffer is slower due to synchronization, String is slowest for modifications because it creates new objects for every change.

Question: Can we make String mutable by extending it?

Frequency Level: Low

Ideal Answer: No. String is a final class, so it cannot be extended. Immutability is enforced by design.

1.5 Arrays
Question: What is the difference between array and ArrayList?

Frequency Level: High

Ideal Answer: Arrays have fixed size, can store primitives, are type-safe at compile time, and are faster. ArrayLists are resizable, store only objects (primitives are autoboxed), use generics for type safety, and provide many utility methods.

Question: How to copy an array in Java?

Frequency Level: Medium

Ideal Answer: Use System.arraycopy(), Arrays.copyOf(), Arrays.copyOfRange(), clone(), or manual loop. System.arraycopy() is the most efficient.

Question: What is the difference between length variable of array and length() method of String?

Frequency Level: Medium

Ideal Answer: Arrays use the 'length' property (array.length). String uses the length() method (string.length()). Collection classes use the size() method.

Question: Can we declare an array with negative size?

Frequency Level: Low

Ideal Answer: No. It will throw NegativeArraySizeException at runtime.

Question: What is an anonymous array?

Frequency Level: Low

Ideal Answer: An anonymous array is created without a variable reference. Example: new int[]{1,2,3}. It is used for immediate passing to methods.

1.6 Garbage Collection
Question: What is garbage collection in Java?

Frequency Level: High

Ideal Answer: Garbage collection is automatic memory management that identifies and removes objects no longer reachable from GC Roots (local variables, active threads, static references, JNI references). It prevents memory leaks (partially) and reduces developer burden.

Question: How can we make an object eligible for garbage collection?

Frequency Level: Medium

Ideal Answer: Set all references to null, reassign reference variable to new object, create object inside a method so it goes out of scope, or use island of isolation (objects referencing each other but no external references).

Question: What is System.gc() and Runtime.gc()?

Frequency Level: Medium

Ideal Answer: These methods suggest to JVM to run garbage collection. The JVM may ignore the request. It is not guaranteed to run immediately. Best practice is not to call them manually.

Question: What is the finalize() method?

Frequency Level: Medium

Ideal Answer: finalize() is a deprecated method called by GC before an object is garbage collected. It was used for cleanup (closing files, connections). It is unreliable and unpredictable. Use try-with-resources or explicit cleanup instead.

Question: What are the different types of references in Java?

Frequency Level: High

Ideal Answer: Strong (default, not GC'd), Soft (GC'd only when memory is low, good for caches), Weak (GC'd on next cycle, used in WeakHashMap), Phantom (used for pre-mortem cleanup, cannot retrieve object).

Question: What is the difference between final, finally, and finalize?

Frequency Level: Very High

Ideal Answer: final is a keyword for constants, method prevention, class prevention. finally is a block that always executes in exception handling. finalize is a deprecated method called before garbage collection.

Question: What is the difference between garbage collection in Java and C++?

Frequency Level: Low

Ideal Answer: Java has automatic garbage collection; C++ requires manual memory management using delete/free. Java GC prevents most memory leaks but adds overhead. C++ gives more control but risks dangling pointers and memory leaks.

2. Collections Framework
2.1 List Interface
Question: What is the difference between ArrayList and LinkedList?

Frequency Level: Very High

Ideal Answer: ArrayList uses dynamic array internally, provides O(1) random access, but O(n) insertion/deletion in middle. LinkedList uses doubly linked list, provides O(1) insertion/deletion at ends (implements Deque), but O(n) random access. Use ArrayList for frequent reads, LinkedList for frequent inserts/deletes.

Question: What is the difference between ArrayList and Vector?

Frequency Level: High

Ideal Answer: ArrayList is not synchronized (not thread-safe), faster, grows by 50% when full. Vector is synchronized (thread-safe), slower, grows by 100% when full. ArrayList is preferred for non-concurrent scenarios.

Question: What is the difference between List and Set?

Frequency Level: High

Ideal Answer: List allows duplicates, maintains insertion order, allows null values (multiple nulls). Set does not allow duplicates, may or may not maintain order based on implementation (HashSet no order, TreeSet sorted, LinkedHashSet insertion order).

Question: How to synchronize an ArrayList?

Frequency Level: Medium

Ideal Answer: Use Collections.synchronizedList(new ArrayList<>()) or use CopyOnWriteArrayList from java.util.concurrent package.

Question: What is the initial capacity and load factor of ArrayList?

Frequency Level: Medium

Ideal Answer: Default initial capacity is 10. When full, it grows by 50% (new capacity = old capacity * 1.5). No load factor concept for ArrayList.

Question: What is the difference between iterator() and listIterator()?

Frequency Level: Medium

Ideal Answer: iterator() can traverse forward only and works for any Collection. listIterator() can traverse forward and backward, supports adding/updating elements, but works only for List.

Question: What is the difference between fail-fast and fail-safe iterators?

Frequency Level: High

Ideal Answer: Fail-fast iterators (ArrayList, HashMap) throw ConcurrentModificationException if collection is modified during iteration. Fail-safe iterators (CopyOnWriteArrayList, ConcurrentHashMap) work on a clone and don't throw exceptions but may not show latest updates.

2.2 Set Interface
Question: What is the difference between HashSet, LinkedHashSet, and TreeSet?

Frequency Level: High

Ideal Answer: HashSet uses HashMap, no order, O(1) operations. LinkedHashSet maintains insertion order using linked list. TreeSet uses TreeMap (Red-Black tree), sorted order (natural or comparator), O(log n) operations.

Question: How does HashSet maintain uniqueness?

Frequency Level: High

Ideal Answer: HashSet internally uses HashMap. When adding an element, it puts the element as key and a dummy object as value. HashMap's put() method uses hashCode() and equals() to check if key already exists.

Question: What is the initial capacity and load factor of HashSet?

Frequency Level: Medium

Ideal Answer: Default initial capacity is 16, default load factor is 0.75. When capacity * load factor is reached, capacity doubles.

Question: Can we add null to a HashSet?

Frequency Level: Medium

Ideal Answer: Yes, HashSet allows one null value because HashMap allows one null key. TreeSet does not allow null because it needs to compare elements.

Question: What is the difference between Set and Map?

Frequency Level: High

Ideal Answer: Set stores single elements without duplicates. Map stores key-value pairs. Set internally uses Map (HashSet uses HashMap) where keys are the elements and values are dummy objects.

2.3 Map Interface
Question: How does HashMap work internally?

Frequency Level: Very High

Ideal Answer: HashMap uses array of Node<K,V> (buckets). For put(), it computes hash using hashCode(), finds index (hash & (n-1)), if bucket empty creates Node, if collision adds to linked list or tree (if threshold > 8). For get(), computes hash, finds bucket, uses equals() to find exact key.

Question: What is the initial capacity and load factor of HashMap?

Frequency Level: High

Ideal Answer: Default initial capacity is 16. Default load factor is 0.75. When size exceeds capacity * load factor (12 for default), capacity doubles (rehashing).

Question: What is the time complexity of HashMap operations?

Frequency Level: High

Ideal Answer: O(1) average for put, get, remove. O(log n) worst-case when treeified (Java 8+). O(n) worst-case without treeification (many collisions).

Question: How does HashMap handle collisions?

Frequency Level: High

Ideal Answer: Before Java 8, collisions were handled using linked list. From Java 8, when a bucket has more than 8 nodes, it converts to a balanced tree (Treeify, red-black tree) for O(log n) performance. When nodes reduce below 6, it converts back to linked list.

Question: What is the difference between HashMap and Hashtable?

Frequency Level: Very High

Ideal Answer: HashMap is not synchronized, allows one null key and multiple null values, faster. Hashtable is synchronized, does not allow null keys or values, slower, legacy class. Use ConcurrentHashMap for thread-safe alternative.

Question: What is the difference between HashMap and ConcurrentHashMap?

Frequency Level: Very High

Ideal Answer: HashMap is not thread-safe. ConcurrentHashMap is thread-safe using bucket-level locking (Java 7) or CAS and synchronized (Java 8). ConcurrentHashMap allows concurrent reads without locking and concurrent writes with partial locking, providing better performance than Hashtable.

Question: What is the difference between HashMap and LinkedHashMap?

Frequency Level: Medium

Ideal Answer: HashMap does not maintain any order. LinkedHashMap maintains insertion order using a doubly linked list (slower, more memory). LinkedHashMap can also be configured for access order (for LRU caches).

Question: What is the difference between HashMap and TreeMap?

Frequency Level: High

Ideal Answer: HashMap uses hashing, O(1) operations, no order. TreeMap uses Red-Black tree, O(log n) operations, sorted order (natural or comparator). TreeMap implements NavigableMap.

Question: What is the difference between put() and putIfAbsent()?

Frequency Level: Medium

Ideal Answer: put() adds or replaces the value and returns previous value. putIfAbsent() adds only if key is absent and returns previous value (null if added). putIfAbsent is atomic in ConcurrentHashMap.

Question: What is the difference between keySet() and entrySet()?

Frequency Level: Medium

Ideal Answer: keySet() returns a Set of all keys. entrySet() returns a Set of Map.Entry objects (key-value pairs). entrySet() is more efficient when iterating both key and value.

Question: What is the purpose of hashCode() and equals() in HashMap?

Frequency Level: Very High

Ideal Answer: hashCode() determines which bucket the key goes into. equals() is used to compare keys within the same bucket. Both must be properly overridden for custom objects used as keys.

Question: What happens if we override only hashCode() but not equals()?

Frequency Level: High

Ideal Answer: Different objects with same hashcode will go to same bucket, but equals() will fail to identify them as equal, causing duplicate keys in HashMap.

Question: What happens if we override only equals() but not hashCode()?

Frequency Level: High

Ideal Answer: Two equal objects may have different hashcodes, so they may go to different buckets, causing duplicate keys in HashMap.

Question: What is the contract between hashCode() and equals()?

Frequency Level: Very High

Ideal Answer: If two objects are equal by equals(), they must have the same hashCode(). If two objects have the same hashCode(), they may or may not be equal. Consistent return values (object unchanged, hashcode remains same).

Question: What is a TreeMap? When to use it?

Frequency Level: Medium

Ideal Answer: TreeMap is a Red-Black tree based implementation of NavigableMap. It stores keys in sorted order (natural or comparator). Use when you need sorted keys, range queries (subMap, headMap, tailMap), or ceiling/floor operations.

Question: What is WeakHashMap?

Frequency Level: Low

Ideal Answer: WeakHashMap uses WeakReferences for keys. If a key has no strong references, it is automatically removed from the map during next GC. Useful for caches where entries should be cleared when not referenced elsewhere.

Question: What is IdentityHashMap?

Frequency Level: Low

Ideal Answer: IdentityHashMap uses reference equality (==) instead of equals() for key comparison. Used in serialization, deep copying, and scenarios where you need identity-based mapping.

2.4 Queue Interface
Question: What is the difference between Queue and Deque?

Frequency Level: Medium

Ideal Answer: Queue is FIFO (first-in-first-out) with operations add/offer (insert), remove/poll (retrieve and delete), element/peek (retrieve without delete). Deque (double-ended queue) allows insertion/removal from both ends.

Question: What is the difference between offer() and add() in Queue?

Frequency Level: Medium

Ideal Answer: add() throws IllegalStateException if queue is full. offer() returns false if queue is full. For unbounded queues, both work similarly.

Question: What is the difference between poll() and remove() in Queue?

Frequency Level: Medium

Ideal Answer: remove() throws NoSuchElementException if queue is empty. poll() returns null if queue is empty.

Question: What is the difference between peek() and element() in Queue?

Frequency Level: Medium

Ideal Answer: element() throws NoSuchElementException if queue is empty. peek() returns null if queue is empty.

Question: What is PriorityQueue?

Frequency Level: High

Ideal Answer: PriorityQueue is an unbounded priority queue based on priority heap. Elements are ordered by natural ordering or a comparator. The head is the least element. It does not permit null.

Question: Is PriorityQueue thread-safe?

Frequency Level: Medium

Ideal Answer: No. Use PriorityBlockingQueue for concurrent scenarios.

Question: What is ArrayDeque? When to use it?

Frequency Level: Medium

Ideal Answer: ArrayDeque is a resizable array implementation of Deque. Faster than LinkedList for stack and queue operations. Use as Stack instead of Stack class, or as Queue instead of LinkedList.

2.5 Utility Classes
Question: What is the difference between Collection and Collections?

Frequency Level: High

Ideal Answer: Collection is the root interface of the collections framework (List, Set, Queue). Collections is a utility class with static methods for sorting, searching, synchronizing, creating unmodifiable collections.

Question: What is the difference between Arrays and Collections utility classes?

Frequency Level: Medium

Ideal Answer: Arrays works with arrays (sort, binarySearch, fill, asList, toString). Collections works with collections (sort, binarySearch, reverse, shuffle, synchronizedXXX, unmodifiableXXX).

Question: What is the difference between Comparable and Comparator?

Frequency Level: Very High

Ideal Answer: Comparable (compareTo) provides single natural ordering, implemented inside the class. Comparator (compare) provides multiple custom orderings, implemented outside the class as a separate strategy.

Question: How to sort a List of custom objects?

Frequency Level: High

Ideal Answer: Make the class implement Comparable and override compareTo(), or use Collections.sort(list, Comparator) with a custom Comparator. Use lambda expressions for simple comparators.

Question: What is the difference between synchronizedCollection() and concurrent collections?

Frequency Level: Medium

Ideal Answer: synchronizedCollection() wraps a collection with synchronized methods (every operation locks whole collection). Concurrent collections (ConcurrentHashMap, CopyOnWriteArrayList) use finer-grained locking or lock-free algorithms for better concurrency.

Question: What is CopyOnWriteArrayList?

Frequency Level: Medium

Ideal Answer: CopyOnWriteArrayList creates a new copy of the array for every modification (add, set, remove). Reads are lock-free and never block. Iterators are fail-safe and reflect the state at iterator creation. Use for read-heavy, write-rare scenarios.

Question: What is the difference between Iterator and Enumeration?

Frequency Level: Low

Ideal Answer: Iterator has remove() method, is fail-fast, and has better method names (hasNext, next). Enumeration is legacy, has no remove method, and is fail-safe. Enumeration is still used in legacy classes like Vector and Properties.

3. Multithreading & Concurrency
3.1 Thread Basics
Question: What is the difference between a process and a thread?

Frequency Level: High

Ideal Answer: A process is an independent program with its own memory space. Threads are lightweight sub-processes sharing the same memory space within a process. Threads are cheaper to create and switch between.

Question: What are the different ways to create a thread in Java?

Frequency Level: Very High

Ideal Answer: Extend Thread class (override run()), implement Runnable interface (preferred), implement Callable (with FutureTask), or use ExecutorService. Runnable is preferred because Java supports single inheritance.

Question: What is the difference between extending Thread and implementing Runnable?

Frequency Level: High

Ideal Answer: Extending Thread allows only single inheritance, can't extend another class. Implementing Runnable allows extending another class, better for resource sharing, and is more flexible. Runnable is preferred.

Question: What is the thread lifecycle?

Frequency Level: High

Ideal Answer: New (created but not started), Runnable (ready to run or running), Blocked (waiting for monitor lock), Waiting (waiting indefinitely), Timed Waiting (waiting with timeout), Terminated (completed execution).

Question: What is the start() method vs run() method?

Frequency Level: High

Ideal Answer: start() creates a new thread and calls run() in that new thread. run() called directly executes in the current thread, not creating a new thread. Always call start() to create a new thread.

Question: What is the difference between sleep() and wait()?

Frequency Level: Very High

Ideal Answer: sleep() is a Thread method, does not release the lock, wakes up after specified time. wait() is an Object method, must be in synchronized context, releases the lock, and must be notified by notify() or notifyAll().

Question: What is the difference between wait() and notify()?

Frequency Level: High

Ideal Answer: wait() causes the current thread to wait until another thread calls notify() or notifyAll() on the same object. notify() wakes up one waiting thread (chosen arbitrarily). notifyAll() wakes up all waiting threads.

Question: What is the difference between notify() and notifyAll()?

Frequency Level: Medium

Ideal Answer: notify() wakes up a single thread (the JVM decides which). notifyAll() wakes up all waiting threads. Use notifyAll() unless you are certain only one thread can be woken.

Question: What is the difference between yield() and join()?

Frequency Level: Medium

Ideal Answer: yield() pauses current thread to give other threads a chance to execute (hint to scheduler, not guaranteed). join() waits for a thread to die before continuing (thread1.join() makes current thread wait for thread1 to finish).

Question: What is the difference between interrupt() and isInterrupted()?

Frequency Level: Medium

Ideal Answer: interrupt() sets the interrupt flag of a thread. isInterrupted() checks the interrupt flag without clearing it. interrupted() checks and clears the interrupt flag.

Question: What happens when an exception occurs in a thread?

Frequency Level: Medium

Ideal Answer: The thread stops execution and terminates. Uncaught exceptions are handled by Thread.UncaughtExceptionHandler (default handler prints stack trace). The exception does not affect other threads.

Question: Can we start a thread twice?

Frequency Level: Medium

Ideal Answer: No. Starting a thread twice throws IllegalThreadStateException. A thread can only be started once.

3.2 Synchronization
Question: What is thread-safety?

Frequency Level: High

Ideal Answer: Thread-safety means that a class or method behaves correctly when accessed by multiple threads without causing data corruption, race conditions, or inconsistent state.

Question: What is the difference between synchronized method and synchronized block?

Frequency Level: High

Ideal Answer: Synchronized method locks the entire method (lock on this for instance, Class for static). Synchronized block locks only a specific part, allowing more granular control and better performance. Use synchronized block with a specific lock object.

Question: What is the difference between synchronized and volatile?

Frequency Level: Very High

Ideal Answer: synchronized provides mutual exclusion (only one thread can execute) and visibility (changes visible to all threads). volatile provides only visibility (no locking, no mutual exclusion). volatile does not guarantee atomicity (e.g., count++ is not atomic even with volatile).

Question: What is a race condition?

Frequency Level: High

Ideal Answer: A race condition occurs when the outcome depends on the timing or interleaving of multiple threads, leading to inconsistent or incorrect results. Example: two threads incrementing the same counter without synchronization.

Question: What is a deadlock? How to prevent it?

Frequency Level: Very High

Ideal Answer: Deadlock occurs when Thread1 holds Lock A and waits for Lock B, while Thread2 holds Lock B and waits for Lock A. Prevention: lock ordering (acquire locks in consistent order), tryLock() with timeout, avoid nested locks, use higher-level concurrency utilities.

Question: What is a livelock?

Frequency Level: Medium

Ideal Answer: Livelock occurs when threads keep changing states in response to each other but make no progress. Example: two threads trying to avoid deadlock by releasing and reacquiring locks repeatedly.

Question: What is starvation?

Frequency Level: Medium

Ideal Answer: Starvation occurs when a thread never gets CPU time or lock access because other threads constantly get priority. Can be caused by incorrect thread priorities or unfair locks.

Question: What is a ReentrantLock?

Frequency Level: High

Ideal Answer: ReentrantLock is an explicit lock implementation with more flexibility than synchronized. Features: tryLock() (non-blocking), lockInterruptibly(), fairness policy, multiple condition variables. Must manually unlock in finally block.

Question: What is the difference between synchronized and ReentrantLock?

Frequency Level: High

Ideal Answer: synchronized is simpler, automatic unlock, can't be interrupted, can't try lock, no fairness guarantee. ReentrantLock provides tryLock, lockInterruptibly, fairness option, multiple conditions, but requires explicit unlock. Use synchronized for simple cases, ReentrantLock for advanced needs.

Question: What is a ReadWriteLock?

Frequency Level: Medium

Ideal Answer: ReadWriteLock allows multiple threads to read simultaneously (shared lock) but only one thread to write (exclusive lock). Improves performance when reads are more frequent than writes. ReentrantReadWriteLock is the implementation.

3.3 Thread Pool & Executor Framework
Question: What is a thread pool? Why use it?

Frequency Level: High

Ideal Answer: A thread pool is a collection of pre-created worker threads that execute tasks. Benefits: reduces thread creation overhead, limits resource usage, improves responsiveness, provides task management. Use Executor framework.

Question: What are the core parameters of ThreadPoolExecutor?

Frequency Level: Very High

Ideal Answer: corePoolSize (minimum threads to keep), maximumPoolSize (maximum threads allowed), keepAliveTime (idle threads wait before termination), workQueue (queue for waiting tasks), threadFactory (creates new threads), handler (rejection policy).

Question: What are the different types of thread pools in Executors?

Frequency Level: High

Ideal Answer: newFixedThreadPool (fixed number of threads), newCachedThreadPool (unbounded, reuse available threads), newSingleThreadExecutor (single thread), newScheduledThreadPool (for scheduling), newWorkStealingPool (fork-join pool).

Question: What are the different rejection policies?

Frequency Level: High

Ideal Answer: AbortPolicy (throws RejectedExecutionException, default), CallerRunsPolicy (runs task in caller's thread), DiscardPolicy (silently discards task), DiscardOldestPolicy (discards oldest task in queue and retries).

Question: What is the difference between submit() and execute()?

Frequency Level: Medium

Ideal Answer: execute() is from Executor interface, returns void, cannot get result or exception. submit() is from ExecutorService, returns Future, can get result via Future.get() and catch exceptions.

Question: What is Future? How to use it?

Frequency Level: High

Ideal Answer: Future represents the result of an asynchronous computation. Methods: get() (blocking wait), get(timeout) (wait with timeout), cancel(), isDone(), isCancelled(). Use with ExecutorService.submit(Callable).

Question: What is CompletableFuture?

Frequency Level: High

Ideal Answer: CompletableFuture (Java 8) is an enhanced Future that can be explicitly completed, chained with callback methods (thenApply, thenAccept, thenRun), combined (thenCombine, allOf, anyOf), and handled for exceptions (exceptionally).

Question: What is the difference between Callable and Runnable?

Frequency Level: High

Ideal Answer: Runnable has run() method, returns void, cannot throw checked exceptions. Callable has call() method, returns a value (via Future), can throw checked exceptions.

3.4 Atomic & Concurrent Collections
Question: What are atomic variables?

Frequency Level: High

Ideal Answer: Atomic variables (AtomicInteger, AtomicLong, AtomicReference, etc.) provide lock-free thread-safe operations using CAS (Compare-And-Swap). Methods: incrementAndGet(), decrementAndGet(), compareAndSet(), etc. More efficient than synchronized for simple counters.

Question: What is CAS (Compare-And-Swap)?

Frequency Level: High

Ideal Answer: CAS is an atomic instruction that compares the current value with an expected value, and if equal, updates to a new value. Used internally by atomic classes. Optimistic locking approach with retry loops.

Question: What is the ABA problem?

Frequency Level: Medium

Ideal Answer: ABA problem occurs when a value changes from A to B and back to A, but CAS cannot detect the intermediate change. Solution: use AtomicStampedReference (with version stamp) or AtomicMarkableReference.

Question: What is ConcurrentHashMap? How does it work?

Frequency Level: Very High

Ideal Answer: ConcurrentHashMap is a thread-safe HashMap with high concurrency. Java 7 used segment locking (16 segments). Java 8+ uses CAS for insertion, synchronized on bucket head for updates, treebin for collisions. Allows concurrent reads without locking.

Question: What is the difference between ConcurrentHashMap and Hashtable?

Frequency Level: High

Ideal Answer: ConcurrentHashMap uses bucket-level locking (multiple threads can write simultaneously to different buckets), allows null values, faster. Hashtable uses single lock for entire map, slower, doesn't allow null.

Question: What is CopyOnWriteArrayList?

Frequency Level: Medium

Ideal Answer: CopyOnWriteArrayList creates a new copy of the underlying array for every modification. Thread-safe, iterators are fail-safe (reflect state at creation), good for read-heavy scenarios. Modifications are expensive.

Question: What is BlockingQueue?

Frequency Level: High

Ideal Answer: BlockingQueue supports operations that wait for the queue to become non-empty (when retrieving) or non-full (when inserting). Implementations: ArrayBlockingQueue (bounded), LinkedBlockingQueue (optionally bounded), PriorityBlockingQueue (unbounded), SynchronousQueue (zero capacity).

Question: What is the difference between ArrayBlockingQueue and LinkedBlockingQueue?

Frequency Level: Medium

Ideal Answer: ArrayBlockingQueue is bounded, array-backed, optional fairness, better performance for moderate sizes. LinkedBlockingQueue is optionally bounded, linked nodes, higher throughput but unpredictable performance.

3.5 ThreadLocal
Question: What is ThreadLocal?

Frequency Level: High

Ideal Answer: ThreadLocal provides thread-local variables. Each thread has its own independent copy of the variable. Used for maintaining per-thread context (user session, database connections, transaction IDs).

Question: What is the memory leak issue with ThreadLocal?

Frequency Level: High

Ideal Answer: ThreadLocalMap uses weak references for keys but strong references for values. If thread continues running (e.g., thread pool), value may never be garbage collected. Always call remove() after use to prevent memory leaks.

Question: What is the difference between ThreadLocal and local variables?

Frequency Level: Medium

Ideal Answer: Local variables exist only within method scope and are lost when method returns. ThreadLocal variables persist across multiple method calls within the same thread.

Question: What is InheritableThreadLocal?

Frequency Level: Low

Ideal Answer: InheritableThreadLocal allows child threads to inherit values from parent thread. Values are copied when child thread is created.

4. Java 8+ Features
4.1 Lambda Expressions
Question: What is a lambda expression?

Frequency Level: Very High

Ideal Answer: Lambda expression is an anonymous function (not bound to a class) that can be passed as data. Syntax: (parameters) -> expression or (parameters) -> { statements }. Used to implement functional interfaces.

Question: What is a functional interface?

Frequency Level: Very High

Ideal Answer: A functional interface has exactly one abstract method. Can have multiple default or static methods. Marked with @FunctionalInterface (optional but recommended). Examples: Runnable, Callable, Comparator, Consumer, Predicate.

Question: What are the built-in functional interfaces in Java 8?

Frequency Level: High

Ideal Answer: Predicate<T> (test: boolean), Consumer<T> (accept: void), Function<T,R> (apply: R), Supplier<T> (get: T), UnaryOperator<T> (Function<T,T>), BinaryOperator<T> (BiFunction<T,T,T>).

Question: What is method reference? Types?

Frequency Level: High

Ideal Answer: Method reference is shorthand for lambda when method is already defined. Types: static method (ClassName::staticMethod), instance method of specific object (object::instanceMethod), instance method of any object (ClassName::instanceMethod), constructor (ClassName::new).

Question: What is the difference between lambda and anonymous inner class?

Frequency Level: Medium

Ideal Answer: Lambda works only with functional interfaces, more concise, can access effectively final variables, no shadowing. Anonymous inner class works with any interface/class, creates separate class file, can shadow variables, has its own this reference.

4.2 Stream API
Question: What is Stream API? What are its benefits?

Frequency Level: Very High

Ideal Answer: Stream API processes sequences of data (collections, arrays, I/O) using functional-style operations. Benefits: declarative code, chaining operations, lazy evaluation, parallel processing, no modification of source.

Question: What is the difference between intermediate and terminal operations?

Frequency Level: High

Ideal Answer: Intermediate operations (filter, map, sorted, distinct) return a Stream, are lazy (not executed until terminal operation). Terminal operations (forEach, collect, reduce, count) produce a result or side effect and close the stream.

Question: What is the difference between map() and flatMap()?

Frequency Level: Very High

Ideal Answer: map() applies a function to each element and returns a Stream of results (one-to-one). flatMap() applies a function that returns a Stream for each element and flattens the results (one-to-many). Use flatMap to flatten nested structures.

Question: What is the difference between filter() and findFirst()?

Frequency Level: Medium

Ideal Answer: filter() is intermediate operation that selects elements matching a predicate. findFirst() is terminal operation that returns first element (Optional) from the stream.

Question: What is the difference between reduce() and collect()?

Frequency Level: Medium

Ideal Answer: reduce() performs a reduction on elements using associative accumulation function, returns Optional. collect() performs mutable reduction into a container (List, Set, Map) using Collector.

Question: What is the difference between limit() and skip()?

Frequency Level: Medium

Ideal Answer: limit(n) returns first n elements. skip(n) discards first n elements. Both are intermediate operations.

Question: What is the difference between sorted() and distinct()?

Frequency Level: Medium

Ideal Answer: sorted() sorts elements (natural or comparator order). distinct() removes duplicates (using equals()).

Question: What is the difference between findFirst() and findAny()?

Frequency Level: Medium

Ideal Answer: findFirst() returns first element in encounter order (deterministic). findAny() returns any element (non-deterministic, better for parallel streams).

Question: What is the difference between forEach() and peek()?

Frequency Level: Medium

Ideal Answer: forEach() is terminal operation (consumes stream). peek() is intermediate operation (for debugging, usually followed by terminal operation). peek() should not modify state.

Question: What is the difference between sequential and parallel streams?

Frequency Level: High

Ideal Answer: Sequential stream processes elements in single thread (order preserved). Parallel stream splits data into substreams, processes in multiple threads (ForkJoinPool). Use parallelStream() or stream().parallel(). Not always faster (overhead for small data, non-thread-safe operations).

Question: When to use parallel streams?

Frequency Level: Medium

Ideal Answer: Large data sets, computationally expensive operations, stateless and independent operations, order not important. Avoid parallel streams for small data, I/O operations, ordered operations, or shared mutable state.

4.3 Optional
Question: What is Optional? Why was it introduced?

Frequency Level: Very High

Ideal Answer: Optional is a container object that may or may not contain a non-null value. Introduced to avoid NullPointerException and explicit null checks, forcing callers to handle absence. Not a replacement for all nulls (fields, collections, method parameters).

Question: What are the ways to create Optional?

Frequency Level: Medium

Ideal Answer: Optional.of(value) (throws NPE if null), Optional.ofNullable(value) (allows null), Optional.empty() (empty optional).

Question: How to retrieve value from Optional?

Frequency Level: High

Ideal Answer: get() (throws NoSuchElementException if empty), orElse(default) (returns default if empty), orElseGet(supplier) (lazy default), orElseThrow(exceptionSupplier) (throws custom exception), ifPresent(consumer) (execute if present).

Question: What is the difference between orElse() and orElseGet()?

Frequency Level: High

Ideal Answer: orElse() always executes its argument (even if Optional is non-empty). orElseGet() executes its supplier lazily (only if Optional is empty). Use orElseGet for expensive or side-effecting defaults.

Question: What are Optional methods like map(), flatMap(), filter()?

Frequency Level: Medium

Ideal Answer: map() transforms value if present, returns Optional of result. flatMap() transforms to Optional (avoids nested Optional). filter() returns same Optional if predicate true, else empty.

Question: Is Optional serializable?

Frequency Level: Low

Ideal Answer: No. Do not use Optional as a field in serializable classes.

4.4 Date & Time API
Question: What is the problem with java.util.Date and Calendar?

Frequency Level: Medium

Ideal Answer: Mutable (not thread-safe), poor API design (months start at 0), confusing (Date represents both date and time), timezone handling difficult, no support for common operations (plus days, difference).

Question: What are the main classes in Java 8 Date Time API?

Frequency Level: High

Ideal Answer: LocalDate (date only, year-month-day), LocalTime (time only, hour-minute-second-nano), LocalDateTime (date and time without timezone), ZonedDateTime (with timezone), Instant (machine timestamp), Period (date-based duration), Duration (time-based duration).

Question: What is the difference between LocalDate, LocalTime, and LocalDateTime?

Frequency Level: Medium

Ideal Answer: LocalDate stores only date (2024-01-01). LocalTime stores only time (14:30:00). LocalDateTime stores both date and time (2024-01-01T14:30:00). All are immutable and thread-safe.

Question: How to convert Date to LocalDate and vice versa?

Frequency Level: Medium

Ideal Answer: Date to LocalDate: date.toInstant().atZone(ZoneId.systemDefault()).toLocalDate(). LocalDate to Date: Date.from(localDate.atStartOfDay(ZoneId.systemDefault()).toInstant()).

4.5 Default & Static Methods in Interface
Question: What are default methods in interfaces?

Frequency Level: High

Ideal Answer: Default methods (Java 8) allow interfaces to have method implementations using 'default' keyword. They allow adding methods to interfaces without breaking existing implementations. Classes can override default methods.

Question: What are static methods in interfaces?

Frequency Level: Medium

Ideal Answer: Static methods in interfaces (Java 8) are utility methods that belong to the interface, not to implementing classes. Called using InterfaceName.method(). Not inherited.

Question: What is the diamond problem with default methods?

Frequency Level: High

Ideal Answer: If a class implements two interfaces with same default method, diamond problem occurs. The class must override the method. Can use InterfaceName.super.methodName() to call specific interface's default method.

Question: Difference between abstract class and interface (post Java 8)?

Frequency Level: High

Ideal Answer: Abstract class can have state (fields), constructors, can extend one class. Interface cannot have state (except static final), no constructors, can implement multiple interfaces. Use abstract class for "is-a" with shared state, interface for "can-do" or multiple inheritance of type.

5. Exception Handling
5.1 Exception Basics
Question: What is an exception? Types of exceptions?

Frequency Level: Very High

Ideal Answer: An exception is an event that disrupts normal program flow. Types: Checked exceptions (compile-time, must handle or declare), Unchecked exceptions (runtime, not required to handle), Errors (system-level, cannot handle).

Question: What is the difference between checked and unchecked exceptions?

Frequency Level: Very High

Ideal Answer: Checked exceptions extend Exception (not RuntimeException), must be caught or declared in throws clause. Unchecked exceptions extend RuntimeException, don't require handling. Checked examples: IOException, SQLException. Unchecked: NullPointerException, IllegalArgumentException.

Question: What is the difference between Exception and Error?

Frequency Level: High

Ideal Answer: Exceptions are recoverable conditions (file not found, invalid input). Errors are unrecoverable system-level problems (OutOfMemoryError, StackOverflowError, VirtualMachineError). Errors should not be caught.

Question: What is the difference between throw and throws?

Frequency Level: High

Ideal Answer: throw is used to explicitly throw an exception (inside method). throws declares that a method may throw exceptions (used in method signature). Multiple exceptions can be declared with throws.

Question: What is the try-catch-finally block?

Frequency Level: High

Ideal Answer: try block contains code that may throw exception. catch block handles specific exception types. finally block always executes (except System.exit() or JVM crash) for cleanup (close resources). Try can have multiple catch blocks (order from specific to general).

Question: Can finally block be skipped?

Frequency Level: Medium

Ideal Answer: finally block does not execute only if System.exit() is called, JVM crashes, or infinite loop in try block.

Question: What is try-with-resources?

Frequency Level: Very High

Ideal Answer: try-with-resources (Java 7) automatically closes resources implementing AutoCloseable. Syntax: try (Resource res = new Resource()) { }. Resources are closed in reverse order. No need for finally block for resource cleanup.

Question: What is the difference between try-catch-finally and try-with-resources?

Frequency Level: Medium

Ideal Answer: try-with-resources automatically closes resources, cleaner code, suppresses exceptions (original exception plus closing exceptions). try-catch-finally requires manual resource closing in finally block.

Question: What is exception propagation?

Frequency Level: Medium

Ideal Answer: Exception propagation is the process where an exception is thrown from the top of stack and moves down to lower methods until caught. If not caught, it reaches main() and program terminates.

Question: Can we have try without catch?

Frequency Level: Medium

Ideal Answer: Yes, try block can be followed by finally block (without catch). Or try-with-resources without catch/finally (implicit finally).

Question: Can we have multiple catch blocks for same exception type?

Frequency Level: Low

Ideal Answer: No. Duplicate exception types cause compilation error. Also, catch blocks must be ordered from most specific to most general.

Question: What is exception masking?

Frequency Level: Low

Ideal Answer: Exception masking occurs when an exception thrown in finally block hides the original exception from try block. try-with-resources handles this by suppressing exceptions.

5.2 Custom Exceptions
Question: How to create custom exception?

Frequency Level: Medium

Ideal Answer: Extend Exception (for checked) or RuntimeException (for unchecked). Provide constructors: default, with message, with cause, with message and cause.

Question: When to create checked vs unchecked custom exception?

Frequency Level: Medium

Ideal Answer: Checked for recoverable conditions where caller can take action (e.g., AccountNotFoundException). Unchecked for programming errors or unrecoverable conditions (e.g., InvalidUserInputException).

6. JVM Internals & Memory Management
6.1 JVM Architecture
Question: What is JVM? What are its main components?

Frequency Level: High

Ideal Answer: JVM (Java Virtual Machine) runs Java bytecode. Main components: ClassLoader (loads .class files), Runtime Data Areas (memory areas), Execution Engine (interpreter, JIT compiler, garbage collector).

Question: What is the difference between JVM, JRE, and JDK?

Frequency Level: Very High

Ideal Answer: JVM executes bytecode. JRE = JVM + libraries (runtime environment). JDK = JRE + development tools (javac, javadoc, jar). JVM is part of JRE, JRE is part of JDK.

Question: What is the JVM memory model (Runtime Data Areas)?

Frequency Level: Very High

Ideal Answer: Heap (all objects, shared across threads), Stack (method calls, local variables, per thread), Method Area (class metadata, static variables, constants), Program Counter Register (current executing instruction), Native Method Stack (for native methods).

Question: What is the difference between Heap and Stack memory?

Frequency Level: Very High

Ideal Answer: Heap stores objects and instance variables, shared across threads, larger, GC managed, slower access. Stack stores primitives, object references, method calls, per thread, smaller, not GC'd, faster access.

Question: What is the difference between PermGen and Metaspace?

Frequency Level: High

Ideal Answer: PermGen (Java 7 and earlier) stored class metadata, fixed size (cause OOM), part of heap. Metaspace (Java 8+) stores class metadata in native memory, auto-growing, no OOM risk unless system memory exhausted.

Question: What is the difference between stack and frame?

Frequency Level: Low

Ideal Answer: Stack contains multiple frames. Each method call creates a frame containing local variables, operand stack, and reference to constant pool.

Question: What is Just-In-Time (JIT) compiler?

Frequency Level: High

Ideal Answer: JIT compiler compiles bytecode to native machine code at runtime for frequently executed methods (hot spots). Improves performance by eliminating interpreter overhead. Profiles code and applies optimizations.

Question: What is the difference between interpreter and JIT compiler?

Frequency Level: Medium

Ideal Answer: Interpreter executes bytecode line by line (slower startup). JIT compiles entire method to native code (better long-term performance). Modern JVMs use both: interpreter initially, JIT for hot methods.

6.2 Garbage Collection
Question: What is Garbage Collection? How does it work?

Frequency Level: Very High

Ideal Answer: GC automatically deallocates memory for objects no longer reachable from GC Roots (local variables, static references, active threads, JNI references). Process: Mark (identify live objects), Sweep (remove dead objects), Compact (optional, reduce fragmentation).

Question: What are GC Roots?

Frequency Level: High

Ideal Answer: GC Roots are objects always reachable: Local variables in active stack frames, static variables, active threads, JNI global references, system class loader references.

Question: What are the different garbage collectors in Java?

Frequency Level: High

Ideal Answer: Serial GC (single thread, small apps), Parallel/Throughput GC (multiple threads, throughput priority), CMS (concurrent, low pause, deprecated), G1GC (default Java 11+, balanced throughput/pause, heap regions), ZGC (ultra-low pause, sub-millisecond), Shenandoah (low pause).

Question: What is the difference between G1GC and CMS?

Frequency Level: Medium

Ideal Answer: G1GC divides heap into regions, predicts pause times, compacts concurrently, better for large heaps. CMS marks concurrently but doesn't compact (fragmentation), deprecated in Java 9+, removed in Java 14.

Question: What is the difference between Minor GC and Major GC?

Frequency Level: High

Ideal Answer: Minor GC cleans Young Generation (Eden + Survivor), frequent, fast, stops all threads (stop-the-world). Major GC cleans Old Generation, infrequent, slower, also stop-the-world. Full GC cleans both Young + Old.

Question: What is the difference between Young Generation and Old Generation?

Frequency Level: High

Ideal Answer: Young Generation holds new objects (Eden, Survivor S0, S1). Old Generation (Tenured) holds objects that survived many minor GCs (age threshold).

Question: How to request garbage collection?

Frequency Level: Medium

Ideal Answer: System.gc() or Runtime.getRuntime().gc(). These only suggest GC (not guaranteed). Use jmap or JVM options for analysis. Don't rely on manual GC in production.

Question: What is object finalization?

Frequency Level: Medium

Ideal Answer: finalize() is deprecated. It was called before object GC. Unreliable, unpredictable, performance issues. Use Cleaner (Java 9) or try-with-resources instead.

6.3 JVM Tuning
Question: Common JVM tuning parameters?

Frequency Level: High

Ideal Answer: -Xms (initial heap size), -Xmx (maximum heap size), -Xmn (young gen size), -XX:MetaspaceSize, -XX:MaxMetaspaceSize, -XX:+UseG1GC (choose collector), -XX:MaxGCPauseMillis (pause target), -verbose:gc (gc logging).

Question: How to analyze heap dump?

Frequency Level: Medium

Ideal Answer: Generate heap dump: jmap, -XX:+HeapDumpOnOutOfMemoryError. Analyze tools: Eclipse MAT (Memory Analyzer Tool), VisualVM, JProfiler. Look for leak suspects, largest objects, GC root paths.

Question: What is OutOfMemoryError? Types?

Frequency Level: High

Ideal Answer: OOM occurs when JVM cannot allocate memory. Types: Java heap space (heap full), Metaspace (class metadata), GC overhead limit exceeded (too much time in GC), Unable to create new native threads.

7. Design Patterns
7.1 Creational Patterns
Question: What is Singleton pattern? How to implement thread-safe Singleton?

Frequency Level: Very High

Ideal Answer: Singleton ensures only one instance of a class. Thread-safe implementations: Bill Pugh (static inner class - preferred), Enum (Joshua Bloch), Double-checked locking (volatile + synchronized), Eager initialization (static final).

Question: What is the Bill Pugh Singleton implementation?

Frequency Level: High

Ideal Answer: Use static inner helper class holding the instance. Instance created only when getInstance() is called (lazy, thread-safe, no synchronization overhead). private static class Holder { static final Singleton INSTANCE = new Singleton(); }

Question: What is Factory pattern?

Frequency Level: High

Ideal Answer: Factory pattern creates objects without exposing instantiation logic. Simple Factory (static method), Factory Method (subclasses decide which class to instantiate), Abstract Factory (creates families of related objects).

Question: What is the difference between Factory and Abstract Factory?

Frequency Level: High

Ideal Answer: Factory creates objects of a single product type. Abstract Factory creates families of related products (multiple product types). Abstract Factory uses composition (factory of factories).

Question: What is Builder pattern? When to use?

Frequency Level: High

Ideal Answer: Builder constructs complex objects step by step. Use when object has many optional parameters, telescoping constructors, or requires validation. Example: StringBuilder, Lombok @Builder.

Question: What is Prototype pattern?

Frequency Level: Low

Ideal Answer: Prototype creates new objects by cloning existing ones (using clone() or copy constructor). Use when object creation is expensive or configuration is complex.

7.2 Structural Patterns
Question: What is Adapter pattern?

Frequency Level: Medium

Ideal Answer: Adapter converts interface of a class into another interface expected by client. Example: Arrays.asList() adapts array to List, InputStreamReader adapts InputStream to Reader.

Question: What is Decorator pattern?

Frequency Level: Medium

Ideal Answer: Decorator adds behavior to objects dynamically without modifying original class. Example: Java I/O (BufferedInputStream wraps FileInputStream). Follows open-closed principle.

Question: What is Proxy pattern?

Frequency Level: Medium

Ideal Answer: Proxy provides a surrogate or placeholder for another object to control access. Types: Virtual (lazy loading), Protection (access control), Remote (RMI), Logging. Spring AOP uses proxies.

Question: What is Facade pattern?

Frequency Level: Low

Ideal Answer: Facade provides simplified interface to complex subsystem. Example: Spring JdbcTemplate simplifies database operations.

7.3 Behavioral Patterns
Question: What is Strategy pattern?

Frequency Level: High

Ideal Answer: Strategy defines a family of algorithms, encapsulates each, and makes them interchangeable. Example: Comparator interface (different sorting strategies), Payment methods (credit card, PayPal).

Question: What is Observer pattern?

Frequency Level: Medium

Ideal Answer: Observer defines one-to-many dependency where when one object changes state, all dependents are notified. Example: Event listeners, MVC (Model notifies View). Java has Observer/Observable (deprecated), PropertyChangeListener.

Question: What is Template Method pattern?

Frequency Level: Medium

Ideal Answer: Template Method defines skeleton of algorithm in base class, lets subclasses override steps. Example: AbstractList, HttpServlet (doGet/doPost).

Question: What is Dependency Injection? How is it related to Inversion of Control?

Frequency Level: Very High

Ideal Answer: Dependency Injection is a design pattern where objects receive their dependencies from external source (container) rather than creating them internally. Inversion of Control is the principle where control flows from framework to code. DI is a form of IoC.

8. Spring Boot & Hibernate
8.1 Spring Core
Question: What is Spring Framework? What are its modules?

Frequency Level: High

Ideal Answer: Spring is a lightweight framework for enterprise Java. Modules: Spring Core (IoC container), Spring AOP, Spring MVC (web), Spring Data (data access), Spring Security, Spring Boot (auto-configuration).

Question: What is IoC container? Types?

Frequency Level: High

Ideal Answer: IoC container manages object creation, configuration, and lifecycle. Types: BeanFactory (basic), ApplicationContext (advanced, preferred). Examples: ClassPathXmlApplicationContext, AnnotationConfigApplicationContext.

Question: What is Dependency Injection? Types?

Frequency Level: Very High

Ideal Answer: DI injects dependencies into objects. Types: Constructor injection (preferred, immutable, required dependencies), Setter injection (optional dependencies), Field injection (using @Autowired, not recommended for testing).

Question: What is the difference between @Component, @Service, @Repository, @Controller?

Frequency Level: High

Ideal Answer: All are stereotype annotations for automatic bean detection. @Component (generic), @Service (service layer, business logic), @Repository (DAO layer, translates persistence exceptions), @Controller (web layer, MVC controllers). @Repository and @Controller provide additional functionality.

Question: What is the difference between @Autowired and @Resource?

Frequency Level: Medium

Ideal Answer: @Autowired (Spring) wires by type then by qualifier, required=true default. @Resource (JSR-250) wires by name then by type, required false default. @Resource is Java standard.

Question: What is the difference between @Qualifier and @Primary?

Frequency Level: Medium

Ideal Answer: @Primary indicates preferred bean when multiple candidates exist. @Qualifier specifies exact bean name to inject (more specific). Use @Primary for default, @Qualifier for exceptions.

Question: What is Bean lifecycle?

Frequency Level: High

Ideal Answer: Instantiate → Populate properties → BeanNameAware → BeanFactoryAware → ApplicationContextAware → @PostConstruct (init method) → BeanPostProcessor → Ready → @PreDestroy (destroy method) → Container shutdown.

Question: What is the difference between @Bean and @Component?

Frequency Level: High

Ideal Answer: @Component (class-level annotation) auto-detects via classpath scanning. @Bean (method-level) explicitly declares bean in @Configuration class. Use @Bean for third-party classes, @Component for own classes.

Question: What are Spring Bean scopes?

Frequency Level: Very High

Ideal Answer: singleton (default, one instance per container), prototype (new instance per request), request (one bean per HTTP request), session (one per HTTP session), application (one per ServletContext), websocket.

Question: What is the difference between singleton and prototype scope?

Frequency Level: High

Ideal Answer: Singleton creates one instance shared across all requests. Prototype creates new instance every time requested. Singleton beans with prototype dependencies need method injection or scoped proxy.

Question: What is the difference between @Configuration and @Component?

Frequency Level: Medium

Ideal Answer: @Configuration classes are @Component with enhanced CGLIB proxying, ensuring @Bean methods return singleton instances. @Component classes don't have this proxy (each @Bean method call creates new instance).

8.2 Spring Boot
Question: What is Spring Boot? Benefits?

Frequency Level: Very High

Ideal Answer: Spring Boot simplifies Spring application development with auto-configuration, starter dependencies, embedded servers (Tomcat, Jetty), production-ready features (actuator, metrics), and minimal configuration.

Question: What is @SpringBootApplication?

Frequency Level: High

Ideal Answer: @SpringBootApplication combines @Configuration, @EnableAutoConfiguration, and @ComponentScan. It enables auto-configuration and component scanning in the package and sub-packages.

Question: What is Spring Boot auto-configuration?

Frequency Level: High

Ideal Answer: Auto-configuration automatically configures beans based on classpath dependencies, properties, and existing beans. Uses @Conditional annotations (e.g., @ConditionalOnClass, @ConditionalOnMissingBean). Disable with exclude attribute.

Question: What are Spring Boot starters?

Frequency Level: Medium

Ideal Answer: Starters are dependency descriptors that bundle common dependencies for specific functionality. Examples: spring-boot-starter-web (web + REST), spring-boot-starter-data-jpa (JPA + Hibernate), spring-boot-starter-test (testing).

Question: What is Spring Boot Actuator?

Frequency Level: Medium

Ideal Answer: Actuator provides production-ready monitoring endpoints: /health (application health), /info (custom info), /metrics (performance metrics), /env (environment properties), /trace (HTTP trace). Secure them in production.

8.3 Spring AOP
Question: What is AOP? What are its concepts?

Frequency Level: High

Ideal Answer: AOP (Aspect-Oriented Programming) separates cross-cutting concerns (logging, transactions, security) from business logic. Concepts: Aspect (module of concern), Joinpoint (method execution), Advice (action at joinpoint), Pointcut (predicate matching joinpoints), Weaving (linking aspects).

Question: What are the types of Advice in Spring AOP?

Frequency Level: Medium

Ideal Answer: @Before (before method execution), @After (after method, regardless of result), @AfterReturning (after successful execution), @AfterThrowing (if method throws exception), @Around (before and after, can modify return value, most powerful).

Question: What is the difference between Spring AOP and AspectJ?

Frequency Level: Medium

Ideal Answer: Spring AOP is proxy-based (only method execution joinpoints, works with Spring beans). AspectJ is bytecode weaving (supports field joinpoints, constructor joinpoints, works with any object). Spring AOP is simpler, AspectJ more powerful.

8.4 Spring Transaction Management
Question: What is @Transactional? How does it work?

Frequency Level: Very High

Ideal Answer: @Transactional declares declarative transaction management. Spring creates proxy around bean, starts transaction before method, commits on successful return, rolls back on RuntimeException (not checked exception). Propagation and isolation levels configurable.

Question: What is transaction propagation? Types?

Frequency Level: High

Ideal Answer: Propagation defines how transactions relate to each other. REQUIRED (default, join existing or create new), REQUIRES_NEW (suspend existing, create new), NESTED (savepoint within existing), SUPPORTS (join if exists), NOT_SUPPORTED (suspend if exists), NEVER (throw if exists), MANDATORY (require existing).

Question: What is transaction isolation? Levels?

Frequency Level: High

Ideal Answer: Isolation defines how transaction changes are visible to others. READ_UNCOMMITTED (dirty reads), READ_COMMITTED (no dirty reads, default for many DBs), REPEATABLE_READ (no dirty/non-repeatable reads), SERIALIZABLE (highest, phantom read protection). Higher isolation reduces concurrency.

Question: What is the difference between programmatic and declarative transaction management?

Frequency Level: Medium

Ideal Answer: Declarative (@Transactional) is easier, less code, uses AOP. Programmatic (TransactionTemplate) gives finer control, but more boilerplate. Use declarative for most cases.

Question: Why does @Transactional not work for private methods or self-invocation?

Frequency Level: Very High

Ideal Answer: Spring uses proxy-based AOP. Only public methods called through proxy are intercepted. Private methods and internal calls (this.method()) bypass proxy, so transaction not applied. Solution: inject self-proxy or move to separate bean.

8.5 Spring Data JPA & Hibernate
Question: What is JPA? What is Hibernate?

Frequency Level: High

Ideal Answer: JPA (Java Persistence API) is specification for ORM. Hibernate is JPA implementation (most popular). Hibernate extends JPA with additional features (caching, criteria API, custom types).

Question: What is the difference between JPA and Hibernate?

Frequency Level: High

Ideal Answer: JPA is standard specification (interfaces). Hibernate is implementation (concrete classes). Use JPA APIs (EntityManager, @Entity) for portability, Hibernate-specific features when needed.

Question: What is EntityManager? What are its methods?

Frequency Level: High

Ideal Answer: EntityManager manages entity lifecycle and database operations. Methods: persist() (make entity managed, for insert), find() (retrieve by ID), merge() (update detached entity), remove() (delete), createQuery(), flush(), clear(), detach().

Question: What is the difference between persist() and save()?

Frequency Level: Medium

Ideal Answer: persist() is JPA method, returns void, makes entity managed (INSERT on flush). save() is Hibernate-specific, returns generated ID, immediately persists. Use persist() for JPA compliance.

Question: What is the difference between get() and load() in Hibernate?

Frequency Level: Medium

Ideal Answer: get() hits database immediately, returns null if not found. load() returns proxy, throws ObjectNotFoundException if not found when accessed (lazy). Use get() when unsure if entity exists.

Question: What is the difference between merge() and update()?

Frequency Level: Medium

Ideal Answer: update() attaches detached entity to session (throws if entity not in DB). merge() copies state from detached entity to managed entity or loads from DB (safer). Use merge() for JPA compliance.

Question: What is the difference between saveOrUpdate() and persist()?

Frequency Level: Low

Ideal Answer: saveOrUpdate() (Hibernate) inserts or updates based on identifier, returns ID. persist() (JPA) only inserts, returns void.

Question: What is N+1 query problem? How to solve?

Frequency Level: Very High

Ideal Answer: N+1 problem occurs when loading parent entity (1 query) then accessing child collection (N queries). Solution: Use JOIN FETCH in JPQL, @EntityGraph, @NamedEntityGraph, or set fetch type to LAZY with batch fetching.

Question: What is lazy loading vs eager loading?

Frequency Level: Very High

Ideal Answer: Lazy loading loads related entities only when accessed (uses proxy, can cause LazyInitializationException outside session). Eager loading loads related entities immediately (JOIN query). Use LAZY by default for performance, override with FETCH for specific queries.

Question: What is the difference between FetchType.LAZY and FetchType.EAGER?

Frequency Level: High

Ideal Answer: LAZY loads on demand (better performance, requires open session). EAGER loads immediately (can cause unnecessary joins, cartesian product issues). Default: @ManyToOne/@OneToOne is EAGER, @OneToMany/@ManyToMany is LAZY.

Question: How to solve LazyInitializationException?

Frequency Level: High

Ideal Answer: Exception occurs when accessing lazy property outside Hibernate session. Solutions: Use JOIN FETCH, @EntityGraph, open session in view (OSIV, not recommended), initialize before session closes (Hibernate.initialize()), DTO projection.

Question: What is the difference between save() and persist() in Hibernate?

Frequency Level: Medium

Ideal Answer: save() returns generated identifier, can be called outside transaction. persist() returns void, must be called within transaction, JPA compliant.

Question: What are Hibernate caching levels?

Frequency Level: High

Ideal Answer: First-level cache (session cache, enabled by default, always on, not shared across sessions). Second-level cache (SessionFactory cache, shared across sessions, requires configuration, cache providers: EhCache, Hazelcast, Infinispan). Query cache (caches query results).

Question: What is the difference between first-level and second-level cache?

Frequency Level: High

Ideal Answer: First-level cache is mandatory, per session, automatically used. Second-level cache is optional, per SessionFactory, shared across sessions, requires configuration and cache provider.

Question: What is the difference between dirty checking and manual update?

Frequency Level: Medium

Ideal Answer: Dirty checking automatically detects changes to managed entities and generates UPDATE on flush. Manual update requires calling update() or merge(). Dirty checking reduces code but may cause unintended updates.

Question: What is the difference between HQL and JPQL?

Frequency Level: Medium

Ideal Answer: JPQL is JPA standard, uses entity names and properties. HQL is Hibernate extension, supports additional features (e.g., update/delete with joins, pagination). Use JPQL for portability.

Question: What is the difference between createQuery(), createNamedQuery(), and createNativeQuery()?

Frequency Level: Medium

Ideal Answer: createQuery() for JPQL/HQL, createNamedQuery() for pre-defined named queries (better performance), createNativeQuery() for raw SQL (database-specific).

Question: What is the difference between CascadeType.ALL, CascadeType.PERSIST, CascadeType.MERGE?

Frequency Level: High

Ideal Answer: ALL applies all cascade operations. PERSIST cascades only persist() operation. MERGE cascades only merge() operation. REMOVE cascades delete, DETACH, REFRESH. Use specific cascades to avoid unintended operations.

Question: What is orphanRemoval?

Frequency Level: Medium

Ideal Answer: orphanRemoval=true removes child entity from database when removed from parent collection (for @OneToMany). Differs from CascadeType.REMOVE (which removes when parent removed). Orphan removal removes orphans.

🏆 Top 10 Most Repeated Questions (All Platforms)
Rank	Question	Category	Frequency
1	How does HashMap work internally?	Collections	Very High
2	Difference between synchronized and volatile?	Multithreading	Very High
3	Difference between String, StringBuilder, StringBuffer?	Core Java	Very High
4	How to implement thread-safe Singleton?	Design Patterns	Very High
5	Difference between checked and unchecked exceptions?	Exception Handling	Very High
6	What is JVM memory model? (Heap vs Stack)	JVM Internals	Very High
7	Difference between ArrayList and LinkedList?	Collections	Very High
8	Explain @Transactional and why self-invocation fails?	Spring Boot	Very High
9	Difference between HashMap and ConcurrentHashMap?	Collections	Very High
10	Difference between wait() and sleep()?	Multithreading	Very High
End of Document

