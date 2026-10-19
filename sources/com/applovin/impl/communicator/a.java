package com.applovin.impl.communicator;

import android.content.IntentFilter;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.x;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class a {
    private final Set<b> ajZ = new HashSet(32);
    private final Object aka = new Object();

    private b a(String str, AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber) {
        for (b bVar : this.ajZ) {
            if (str.equals(bVar.getTopic()) && appLovinCommunicatorSubscriber.equals(bVar.tu())) {
                return bVar;
            }
        }
        return null;
    }

    public boolean a(AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber, String str) {
        if (appLovinCommunicatorSubscriber == null || !StringUtils.isValidString(str)) {
            x.H("AppLovinCommunicator", "Unable to subscribe - invalid subscriber (" + appLovinCommunicatorSubscriber + ") or topic (" + str + ")");
            return false;
        }
        synchronized (this.aka) {
            b bVarA = a(str, appLovinCommunicatorSubscriber);
            if (bVarA == null) {
                b bVar = new b(str, appLovinCommunicatorSubscriber);
                this.ajZ.add(bVar);
                AppLovinBroadcastManager.registerReceiver(bVar, new IntentFilter(str));
                return true;
            }
            x.H("AppLovinCommunicator", "Attempting to re-subscribe subscriber (" + appLovinCommunicatorSubscriber + ") to topic (" + str + ")");
            if (!bVarA.isActive()) {
                bVarA.ax(true);
                AppLovinBroadcastManager.registerReceiver(bVarA, new IntentFilter(str));
            }
            return true;
        }
    }

    public boolean hasSubscriber(String str) {
        synchronized (this.aka) {
            Iterator<b> it = this.ajZ.iterator();
            while (it.hasNext()) {
                if (str.equals(it.next().getTopic())) {
                    return true;
                }
            }
            return false;
        }
    }

    public void unsubscribe(AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber, String str) {
        b bVarA;
        if (StringUtils.isValidString(str)) {
            synchronized (this.aka) {
                bVarA = a(str, appLovinCommunicatorSubscriber);
            }
            if (bVarA != null) {
                bVarA.ax(false);
                AppLovinBroadcastManager.unregisterReceiver(bVarA);
            }
        }
    }
}
