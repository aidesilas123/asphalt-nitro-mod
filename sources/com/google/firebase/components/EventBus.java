package com.google.firebase.components;

import androidx.annotation.GuardedBy;
import com.google.firebase.events.Event;
import com.google.firebase.events.EventHandler;
import com.google.firebase.events.Publisher;
import com.google.firebase.events.Subscriber;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
class EventBus implements Subscriber, Publisher {

    @GuardedBy("this")
    private final Map<Class<?>, ConcurrentHashMap<EventHandler<Object>, Executor>> a = new HashMap();

    @GuardedBy("this")
    private Queue<Event<?>> b = new ArrayDeque();
    private final Executor c;

    EventBus(Executor executor) {
        this.c = executor;
    }

    private synchronized Set<Map.Entry<EventHandler<Object>, Executor>> d(Event<?> event) {
        ConcurrentHashMap<EventHandler<Object>, Executor> concurrentHashMap;
        concurrentHashMap = this.a.get(event.b());
        return concurrentHashMap == null ? Collections.emptySet() : concurrentHashMap.entrySet();
    }

    @Override // com.google.firebase.events.Subscriber
    public <T> void a(Class<T> cls, EventHandler<? super T> eventHandler) {
        b(cls, this.c, eventHandler);
    }

    @Override // com.google.firebase.events.Subscriber
    public synchronized <T> void b(Class<T> cls, Executor executor, EventHandler<? super T> eventHandler) {
        Preconditions.checkNotNull(cls);
        Preconditions.checkNotNull(eventHandler);
        Preconditions.checkNotNull(executor);
        if (!this.a.containsKey(cls)) {
            this.a.put(cls, new ConcurrentHashMap<>());
        }
        this.a.get(cls).put(eventHandler, executor);
    }

    void c() {
        Queue<Event<?>> queue;
        synchronized (this) {
            queue = this.b;
            if (queue != null) {
                this.b = null;
            } else {
                queue = null;
            }
        }
        if (queue != null) {
            Iterator<Event<?>> it = queue.iterator();
            while (it.hasNext()) {
                f(it.next());
            }
        }
    }

    public void f(final Event<?> event) {
        Preconditions.checkNotNull(event);
        synchronized (this) {
            Queue<Event<?>> queue = this.b;
            if (queue != null) {
                queue.add(event);
                return;
            }
            for (final Map.Entry<EventHandler<Object>, Executor> entry : d(event)) {
                entry.getValue().execute(new Runnable() { // from class: com.google.firebase.components.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        ((EventHandler) entry.getKey()).a(event);
                    }
                });
            }
        }
    }
}
