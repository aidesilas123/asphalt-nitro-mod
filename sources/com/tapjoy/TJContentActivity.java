package com.tapjoy;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.tapjoy.internal.t1;
import com.tapjoy.internal.v1;

/* JADX INFO: loaded from: classes4.dex */
public class TJContentActivity extends Activity {
    public static volatile ContentProducer a;
    public ContentProducer b;
    public boolean c = false;

    public interface ContentProducer {
        void dismiss(Activity activity);

        void onActivityResult(Activity activity, int i, int i2, Intent intent);

        void show(Activity activity);
    }

    public static abstract class a implements ContentProducer {
        @Override // com.tapjoy.TJContentActivity.ContentProducer
        public void onActivityResult(Activity activity, int i, int i2, Intent intent) {
        }
    }

    public static void start(Context context, ContentProducer contentProducer, boolean z) {
        Intent intent = new Intent(context, (Class<?>) TJContentActivity.class);
        intent.setFlags(276889600);
        intent.putExtra("com.tapjoy.internal.content.producer.id", toIdentityString(contentProducer));
        intent.putExtra("com.tapjoy.internal.content.fullscreen", z);
        synchronized (TJContentActivity.class) {
            a = contentProducer;
            context.startActivity(intent);
        }
    }

    public static String toIdentityString(Object obj) {
        if (obj == null) {
            return "null";
        }
        return obj.getClass().getName() + "" + System.identityHashCode(obj);
    }

    @Override // android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        this.b.onActivityResult(this, i, i2, intent);
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        boolean z = true;
        requestWindowFeature(1);
        super.onCreate(bundle);
        Intent intent = getIntent();
        String stringExtra = intent.getStringExtra("com.tapjoy.internal.content.producer.id");
        if (stringExtra == null) {
            z = false;
        } else {
            synchronized (TJContentActivity.class) {
                if (a == null || !stringExtra.equals(toIdentityString(a))) {
                    z = false;
                } else {
                    this.b = a;
                    a = null;
                    if (intent.getBooleanExtra("com.tapjoy.internal.content.fullscreen", false)) {
                        getWindow().setFlags(1024, 1024);
                    }
                    this.b.show(this);
                }
            }
        }
        if (z) {
            return;
        }
        finish();
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        ContentProducer contentProducer = this.b;
        if (contentProducer != null) {
            contentProducer.dismiss(this);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public final void onStart() {
        super.onStart();
        if (v1.a.m) {
            this.c = true;
            t1.a(this);
        }
    }

    @Override // android.app.Activity
    public final void onStop() {
        if (this.c) {
            this.c = false;
            t1.b(this);
        }
        super.onStop();
    }
}
