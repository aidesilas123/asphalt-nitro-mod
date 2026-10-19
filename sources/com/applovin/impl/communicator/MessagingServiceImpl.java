package com.applovin.impl.communicator;

import androidx.annotation.Nullable;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorMessagingService;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes.dex */
public class MessagingServiceImpl implements AppLovinCommunicatorMessagingService {

    @Nullable
    private ScheduledThreadPoolExecutor ajX;
    private final Object ajY = new Object();

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Thread f(Runnable runnable) {
        Thread thread = new Thread(runnable, "AppLovinSdk:communicator");
        thread.setPriority(1);
        thread.setDaemon(true);
        return thread;
    }

    private ScheduledThreadPoolExecutor tt() {
        synchronized (this.ajY) {
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = this.ajX;
            if (scheduledThreadPoolExecutor != null) {
                return scheduledThreadPoolExecutor;
            }
            return new ScheduledThreadPoolExecutor(1, new ThreadFactory() { // from class: com.applovin.impl.communicator.e
                @Override // java.util.concurrent.ThreadFactory
                public final Thread newThread(Runnable runnable) {
                    return MessagingServiceImpl.f(runnable);
                }
            });
        }
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorMessagingService
    public void publish(final AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutorTt = tt();
        this.ajX = scheduledThreadPoolExecutorTt;
        scheduledThreadPoolExecutorTt.execute(new Runnable() { // from class: com.applovin.impl.communicator.d
            @Override // java.lang.Runnable
            public final void run() {
                AppLovinBroadcastManager.sendBroadcastSync(appLovinCommunicatorMessage, null);
            }
        });
    }

    public String toString() {
        return "MessagingServiceImpl{}";
    }
}
