package com.bytedance.sdk.openadsdk.activity;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.openadsdk.core.bannerexpress.a;
import com.bytedance.sdk.openadsdk.core.h;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.core.t;
import com.bytedance.sdk.openadsdk.multipro.b;
import com.google.android.gms.drive.DriveFile;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class TTDelegateActivity extends TTBaseActivity {
    private static final Map<String, a.InterfaceC0132a> c = Collections.synchronizedMap(new HashMap());
    private Intent a;
    private t b;

    public static void a(q qVar, String str) {
        a(qVar, str, null);
    }

    public static void a(q qVar, String str, a.InterfaceC0132a interfaceC0132a) {
        if (qVar == null) {
            return;
        }
        Intent intent = new Intent(o.a(), (Class<?>) TTDelegateActivity.class);
        intent.addFlags(DriveFile.MODE_READ_ONLY);
        intent.putExtra("type", 6);
        intent.putExtra("ext_info", qVar.ac());
        intent.putExtra("filter_words", com.bytedance.sdk.openadsdk.tool.a.a(qVar.ae()));
        intent.putExtra("creative_info", qVar.ao().toString());
        intent.putExtra("closed_listener_key", str);
        if (interfaceC0132a != null) {
            if (b.c()) {
                h.b().a(str, interfaceC0132a);
            } else {
                c.put(str, interfaceC0132a);
            }
        }
        if (o.a() != null) {
            o.a().startActivity(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        l.c("showDislike", "removeDislikeListener....closedListenerKey=" + str);
        Map<String, a.InterfaceC0132a> map = c;
        if (map == null || TextUtils.isEmpty(str)) {
            return;
        }
        map.remove(str);
        if (l.d()) {
            l.c("showDislike", "removeDislikeListener....mListenerMap.size:" + map.size());
        }
    }

    private void a(String str, String str2, final String str3, String str4) {
        if (str2 != null && str != null && this.b == null) {
            com.bytedance.sdk.openadsdk.dislike.b bVar = new com.bytedance.sdk.openadsdk.dislike.b(this, str, com.bytedance.sdk.openadsdk.tool.a.a(str2), str4);
            this.b = bVar;
            bVar.a(str3);
            this.b.a(new t.a() { // from class: com.bytedance.sdk.openadsdk.activity.TTDelegateActivity.1
                @Override // com.bytedance.sdk.openadsdk.core.t.a
                public void a() {
                    if (!((com.bytedance.sdk.openadsdk.dislike.b) TTDelegateActivity.this.b).b()) {
                        TTDelegateActivity.this.a(str3);
                        TTDelegateActivity.this.finish();
                    }
                    ((com.bytedance.sdk.openadsdk.dislike.b) TTDelegateActivity.this.b).a(false);
                }

                @Override // com.bytedance.sdk.openadsdk.core.t.a
                public void a(int i, String str5) {
                    a.InterfaceC0132a interfaceC0132aC;
                    l.c("showDislike", "closedListenerKey=" + str3 + ",onSelected->position=" + i + ",value=" + str5);
                    if (TTDelegateActivity.c != null && TTDelegateActivity.c.size() > 0 && !TextUtils.isEmpty(str3) && !b.c()) {
                        a.InterfaceC0132a interfaceC0132a = (a.InterfaceC0132a) TTDelegateActivity.c.get(str3);
                        if (interfaceC0132a != null) {
                            interfaceC0132a.a();
                        }
                    } else if (!TextUtils.isEmpty(str3) && (interfaceC0132aC = h.b().c(str3)) != null) {
                        interfaceC0132aC.a();
                        h.b().d(str3);
                    }
                    TTDelegateActivity.this.a(str3);
                    TTDelegateActivity.this.finish();
                }
            });
        }
        t tVar = this.b;
        if (tVar != null) {
            tVar.a();
        }
    }

    private void b() {
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.alpha = 0.0f;
        window.setAttributes(attributes);
    }

    private void c() {
        int intExtra = this.a.getIntExtra("type", 0);
        if (intExtra != 1) {
            if (intExtra != 6) {
                finish();
                return;
            }
            a(this.a.getStringExtra("ext_info"), this.a.getStringExtra("filter_words"), this.a.getStringExtra("closed_listener_key"), this.a.getStringExtra("creative_info"));
        }
    }

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (!com.bytedance.sdk.openadsdk.core.l.e()) {
            finish();
            return;
        }
        b();
        this.a = getIntent();
        if (o.a() == null) {
            o.a(this);
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (o.a() == null) {
            o.a(this);
        }
        setIntent(intent);
        this.a = intent;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        t tVar = this.b;
        if ((tVar == null || ((com.bytedance.sdk.openadsdk.dislike.b) tVar).a == null || !((com.bytedance.sdk.openadsdk.dislike.b) tVar).a.isShowing()) && this.a != null) {
            c();
        }
    }
}
