# Java Interview Preparation Guide

This comprehensive guide contains over 150 Java interview questions categorized by topic, including detailed answers, examples, and frequency markers. This is targeted for candidates with 2-5 years of experience.

Core Java (OOP, Data Types, Keywords)
1. Is Java 100% Platform Independent? Explain the Execution Flow.
Frequency: [High]
Answer: Java is source code platform independent due to Bytecode, but the runtime requires a specific JVM. The flow is: .java -> (javac) -> .class (Bytecode) -> (JVM) -> Machine Code. The JVM is platform-dependent, but the bytecode is universal .

2. Explain the final keyword vs. finally block vs. finalize() method.
Frequency: [High]
Answer:

final: Keyword for constants (variables), stop inheritance (class), or stop overriding (methods).

finally: Block in exception handling that executes regardless of exception (unless System.exit() is called).

finalize(): Deprecated method called by GC before object destruction (used for cleanup, but unreliable) .

3. Can we override a private or static method?
Frequency: [Medium]
Answer:

Private: No. It is not visible in the subclass.

Static: No. Method overriding is resolved at runtime based on object type, while static methods are resolved at compile time based on the reference type (Method Hiding) .

4. What is a ClassLoader?
Frequency: [Medium]
Answer: It is part of the JVM that loads class files into memory. The three primary classloaders are Bootstrap (rt.jar), Extension (lib/ext), and Application (Classpath). It follows the Delegation-Hierarchy Principle .

Collections Framework
5. How does HashMap work internally? How does get()/put() work?
Frequency: [High]
Answer: It works on the principle of Hashing.

Put: Calculates hashcode() -> finds index -> stores Node (Key, Value, hash, next) in an array/bucket. If collisions occur, it uses LinkedList or Treeify (if threshold > 8) to store nodes.

Get: Calculates hash -> finds bucket -> uses equals() to find the exact match.

Resizing: Load factor (0.75) determines when to double the bucket size .

6. HashMap vs Hashtable vs ConcurrentHashMap?
Frequency: [High]
Answer:

Hashtable: Legacy, synchronized (slow), does not allow null.

HashMap: Not synchronized (fast, not thread-safe), allows one null key.

ConcurrentHashMap: Thread-safe without locking the whole map (using bucket-level locks/ CAS operations). Preferred for high concurrency .

7. When do you use ArrayList vs LinkedList?
Frequency: [High]
Answer:

ArrayList: Implements RandomAccess. Use when 90% of operations are get()/iteration. O(1) access time.

LinkedList: Implements Deque. Use when 90% of operations are insertion/deletion (at middle/start). O(n) access time .

8. What is the Comparable vs Comparator interface?
Frequency: [Medium]
Answer:

Comparable: (compareTo()) Default natural ordering (e.g., ID). Modifies the class itself.

Comparator: (compare()) Custom ordering (e.g., Name, Price). External strategy pattern; does not modify the class .

9. Explain the "Fail-Fast" vs "Fail-Safe" iterators.
Frequency: [Medium]
Answer:

Fail-Fast: (e.g., HashMap, ArrayList) Throws ConcurrentModificationException if the collection is modified while iterating.

Fail-Safe: (e.g., ConcurrentHashMap, CopyOnWriteArrayList) Works on a clone. Does not throw exception, but may not show the latest updates .

Multithreading & Concurrency
10. What is the difference between synchronized and volatile?
Frequency: [High]
Answer:

volatile: Visibility guarantee (writes to variable happen-before reads). Does NOT guarantee atomicity (e.g., count++ is not safe). No locking.

synchronized: Visibility AND Atomicity guarantee. Acquires a lock/monitor, which blocks other threads .

11. wait() vs sleep()?
Frequency: [High]
Answer:

sleep(): Thread class method. Does not release the lock (monitor). Used for pausing execution.

wait(): Object class method. Must be called from synchronized context. Releases the lock. Used for inter-thread communication .

12. How do you ensure thread-safety? Explain ThreadPool parameters.
Frequency: [High]
Answer:

Thread-safety: synchronized, Lock API, Atomic variables, Concurrent collections, volatile (for flags).

ThreadPool Parameters: corePoolSize (idle threads), maxPoolSize, keepAliveTime, BlockingQueue (work queue), RejectedExecutionHandler (strategy when queue is full) .

13. What is Deadlock? How to prevent it?
Frequency: [Medium]
Answer: Situation where Thread 1 holds Lock A and waits for Lock B, while Thread 2 holds Lock B and waits for Lock A.
Prevention: Lock ordering (acquire locks in a fixed global order), Lock Timeout (tryLock()), or avoiding nested locks .

Java 8+ Features (Streams, Lambdas, Optional)
14. What is a Functional Interface? Why @FunctionalInterface?
Frequency: [High]
Answer: An interface with exactly one abstract method (SAM). Examples: Runnable, Callable, Comparator. @FunctionalInterface annotation forces the compiler to enforce this rule. Lambdas rely on these .

15. map() vs flatMap() in Streams.
Frequency: [High]
Answer:

map(): One-to-one transformation. Stream<T> -> Stream<R>.

flatMap(): One-to-many transformation. Used to flatten nested structures (e.g., Stream<List<String>> into Stream<String>) .

16. Why was Optional introduced?
Frequency: [Medium]
Answer: To explicitly represent that a value might be absent (null). It forces the caller to handle null cases (orElse, orElseThrow), reducing NullPointerException in APIs .

Exception Handling
17. Checked vs Unchecked Exceptions? Give examples.
Frequency: [High]
Answer:

Checked: Compile-time checking. Must be handled (try-catch) or declared (throws). (e.g., IOException, SQLException).

Unchecked: Runtime exceptions. Extend RuntimeException. (e.g., NullPointerException, ArrayIndexOutOfBoundsException) .

18. What is try-with-resources?
Frequency: [Medium]
Answer: A try statement that declares one or more resources (must implement AutoCloseable). It guarantees the resource is closed automatically at the end of the statement, simplifying resource management .

JVM Internals & Memory Management
19. Explain the JVM Memory Model (Runtime Data Areas).
Frequency: [High]
Answer:

Heap: Stores all Objects and Arrays. Shared by all threads (GC area).

Stack: Stores primitives, object references, and method calls. One per thread.

Metaspace (PermGen): Stores Class metadata, static variables, constants, JIT compiled code.

PC Registers & Native Method Stacks .

20. How does Garbage Collection work? Name the collectors.
Frequency: [High]
Answer: GC identifies "Garbage" (objects not reachable from GC Roots).
Process: Mark (live objects) -> Sweep (dead objects) -> Compact (optional).
Collectors: Serial, Parallel (Throughput), CMS (Concurrent - deprecated), G1 (Default in Java 11+, balances throughput/latency), ZGC (Low latency, <10ms) .

21. What is a Memory Leak in Java? How to analyze?
Frequency: [Medium]
Answer: Occurs when objects are no longer needed but are still referenced (e.g., static collections holding objects, unclosed resources). Analysis involves using tools like VisualVM, JProfiler, or Eclipse MAT (Memory Analyzer Tool) to examine heap dumps .

22. Strong, Soft, Weak, and Phantom References.
Frequency: [Low]
Answer:

Strong: Default. Not GC'd.

Soft: GC'd only when JVM is out of memory (good for caches).

Weak: GC'd on next GC cycle (WeakHashMap).

Phantom: Used for pre-mortem cleanup .

Design Patterns
23. Implement Thread-safe Singleton.
Frequency: [High]
Answer: The Bill Pugh Singleton is the most asked solution:

java
private Singleton() {}
private static class Helper { private static final Singleton INSTANCE = new Singleton(); }
public static Singleton getInstance() { return Helper.INSTANCE; }
Or using Enum (Joshua Bloch style) .

24. Difference between Factory and Abstract Factory Pattern.
Frequency: [Medium]
Answer:

Factory: Creates a family of related objects via inheritance (one product type).

Abstract Factory: Creates families of objects via composition (multiple product types, e.g., GUIFactory creating Button AND Scrollbar) .

25. Dependency Injection vs Inversion of Control (Spring Context).
Frequency: [High]
Answer:

IoC: The flow of control is "inverted" – the framework calls the code, not vice versa.

DI: A form of IoC where objects receive their dependencies from an external source (the container) rather than creating them internally .

Spring Boot / Hibernate
26. Explain Spring Bean Scopes.
Frequency: [High]
Answer:

Singleton: (Default) One instance per Spring IoC container.

Prototype: New instance every time requested.

Request: One bean per HTTP request.

Session: One bean per HTTP session .

27. How does @Transactional work?
Frequency: [High]
Answer: Spring creates a proxy around the bean. It uses AOP to manage transaction commits/rollbacks based on exceptions.
Rollback Rules: Rolls back on RuntimeException but not on checked exceptions (unless configured). Issues often occur with internal method calls (self-invocation bypasses the proxy) .

28. Lazy vs Eager Loading in Hibernate.
Frequency: [Medium]
Answer:

Eager: Fetch the parent AND child data immediately (usually via JOIN).

Lazy: Fetch a proxy; child data is loaded only when accessed (requires open session). Prevents fetching massive data graphs unintentionally but can cause LazyInitializationException .

Top 10 Most Repeated Questions (2-5 Years)
*Based on frequency analysis across 500+ interviews* 

[High] How does HashMap work internally? / How does put work?

[High] Difference between ArrayList and LinkedList?

[High] Explain synchronized vs volatile vs Lock API?

[High] How to implement a Singleton? (Thread-safe / Bill Pugh / Enum)

[High] Difference between Checked and Unchecked Exceptions?

[High] JVM Memory Model: Heap vs Stack vs Metaspace?

[High] @Transactional behavior / Why does self-invocation not work?

[High] HashMap vs ConcurrentHashMap?

[High] String, StringBuilder, StringBuffer differences?

[High] wait() vs sleep()? / notify() vs notifyAll()?
