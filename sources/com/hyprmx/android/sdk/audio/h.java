package com.hyprmx.android.sdk.audio;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import androidx.core.content.ContextCompat;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes2.dex */
public final class h implements com.hyprmx.android.sdk.audio.b, e {
    public final Context a;
    public final e b;
    public final Lazy c;

    public final class a extends ContentObserver {
        public final Context a;
        public final Lazy b;
        public final i c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ h f4490d;

        /* JADX INFO: renamed from: com.hyprmx.android.sdk.audio.h$a$a, reason: collision with other inner class name */
        public static final class C0279a extends Lambda implements Function0<AudioManager> {
            public C0279a() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final AudioManager invoke() {
                Object systemService = ContextCompat.getSystemService(a.this.a, AudioManager.class);
                Intrinsics.checkNotNull(systemService);
                return (AudioManager) systemService;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(h hVar, Context context, Handler handler) {
            super(handler);
            Intrinsics.checkNotNullParameter(context, "context");
            this.f4490d = hVar;
            this.a = context;
            this.b = LazyKt__LazyJVMKt.lazy(new C0279a());
            this.c = new i(a(a()), b(a()));
        }

        public static int a(AudioManager audioManager) {
            return audioManager.getStreamVolume(3);
        }

        public static int b(AudioManager audioManager) {
            return audioManager.getStreamMaxVolume(3);
        }

        public final AudioManager a() {
            return (AudioManager) this.b.getValue();
        }

        @Override // android.database.ContentObserver
        public final void onChange(boolean z) {
            super.onChange(z);
            e eVar = this.f4490d.b;
            i iVar = this.c;
            eVar.a(new i(a().getStreamVolume(3), iVar.b, iVar.c));
        }
    }

    public static final class b extends Lambda implements Function0<a> {
        public b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final a invoke() {
            h hVar = h.this;
            return new a(hVar, hVar.a, new Handler(Looper.getMainLooper()));
        }
    }

    public h(Context applicationContext, e sharedAM, com.hyprmx.android.sdk.core.js.a jsEngine) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(sharedAM, "sharedAM");
        Intrinsics.checkNotNullParameter(jsEngine, "jsEngine");
        this.a = applicationContext;
        this.b = sharedAM;
        new d(jsEngine, this);
        this.c = LazyKt__LazyJVMKt.lazy(new b());
    }

    @Override // com.hyprmx.android.sdk.audio.e
    public final void a(i volume) {
        Intrinsics.checkNotNullParameter(volume, "volume");
        this.b.a(volume);
    }

    @Override // com.hyprmx.android.sdk.audio.b
    public final void a(boolean z) {
        if (z) {
            this.a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, (a) this.c.getValue());
        } else {
            this.a.getContentResolver().unregisterContentObserver((a) this.c.getValue());
        }
    }

    @Override // com.hyprmx.android.sdk.audio.b
    public final void getAudioCategory() {
        ((a) this.c.getValue()).getClass();
    }

    @Override // com.hyprmx.android.sdk.audio.b
    public final void getIsMuted() {
        ((a) this.c.getValue()).getClass();
    }

    @Override // com.hyprmx.android.sdk.audio.b
    public final double getVolume() {
        a aVar = (a) this.c.getValue();
        return ((double) aVar.a().getStreamVolume(3)) / ((double) aVar.a().getStreamMaxVolume(3));
    }

    @Override // com.hyprmx.android.sdk.audio.b
    public final void startAudioSession() {
    }
}
