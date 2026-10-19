package com.facebook.internal;

import android.content.Intent;
import com.facebook.CallbackManager;
import com.facebook.FacebookSdk;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CallbackManagerImpl.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class CallbackManagerImpl implements CallbackManager {
    public static final Companion Companion = new Companion(null);
    private static final Map<Integer, Callback> staticCallbacks = new HashMap();
    private final Map<Integer, Callback> callbacks = new HashMap();

    /* JADX INFO: compiled from: CallbackManagerImpl.kt */
    public interface Callback {
        boolean onActivityResult(int i, Intent intent);
    }

    /* JADX INFO: compiled from: CallbackManagerImpl.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(kotlin.jvm.internal.n nVar) {
            this();
        }

        private final synchronized Callback getStaticCallback(int i) {
            return (Callback) CallbackManagerImpl.staticCallbacks.get(Integer.valueOf(i));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean runStaticCallback(int i, int i2, Intent intent) {
            Callback staticCallback = getStaticCallback(i);
            if (staticCallback == null) {
                return false;
            }
            return staticCallback.onActivityResult(i2, intent);
        }

        public final synchronized void registerStaticCallback(int i, Callback callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            if (CallbackManagerImpl.staticCallbacks.containsKey(Integer.valueOf(i))) {
                return;
            }
            CallbackManagerImpl.staticCallbacks.put(Integer.valueOf(i), callback);
        }
    }

    /* JADX INFO: compiled from: CallbackManagerImpl.kt */
    public enum RequestCodeOffset {
        Login(0),
        Share(1),
        Message(2),
        Like(3),
        GameRequest(4),
        AppGroupCreate(5),
        AppGroupJoin(6),
        AppInvite(7),
        DeviceShare(8),
        GamingFriendFinder(9),
        GamingGroupIntegration(10),
        Referral(11),
        GamingContextCreate(12),
        GamingContextSwitch(13),
        GamingContextChoose(14),
        TournamentShareDialog(15),
        TournamentJoinDialog(16);

        private final int offset;

        RequestCodeOffset(int i) {
            this.offset = i;
        }

        /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
        public static RequestCodeOffset[] valuesCustom() {
            RequestCodeOffset[] requestCodeOffsetArrValuesCustom = values();
            return (RequestCodeOffset[]) Arrays.copyOf(requestCodeOffsetArrValuesCustom, requestCodeOffsetArrValuesCustom.length);
        }

        public final int toRequestCode() {
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            return FacebookSdk.getCallbackRequestCodeOffset() + this.offset;
        }
    }

    public static final synchronized void registerStaticCallback(int i, Callback callback) {
        Companion.registerStaticCallback(i, callback);
    }

    @Override // com.facebook.CallbackManager
    public boolean onActivityResult(int i, int i2, Intent intent) {
        Callback callback = this.callbacks.get(Integer.valueOf(i));
        return callback == null ? Companion.runStaticCallback(i, i2, intent) : callback.onActivityResult(i2, intent);
    }

    public final void registerCallback(int i, Callback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.callbacks.put(Integer.valueOf(i), callback);
    }

    public final void unregisterCallback(int i) {
        this.callbacks.remove(Integer.valueOf(i));
    }
}
