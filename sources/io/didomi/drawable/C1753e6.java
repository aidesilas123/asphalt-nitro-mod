package io.didomi.drawable;

import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.didomi.sdk.e6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J#\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lio/didomi/sdk/e6;", "", "<init>", "()V", "Landroid/content/SharedPreferences;", "sharedPreferences", "", "", "keys", "", "a", "(Landroid/content/SharedPreferences;[Ljava/lang/String;)V", "android_release"}, mv = {1, 8, 0})
public final class C1753e6 {
    public static final C1753e6 a = new C1753e6();

    private C1753e6() {
    }

    public final void a(SharedPreferences sharedPreferences, String[] keys) {
        Intrinsics.checkNotNullParameter(sharedPreferences, "sharedPreferences");
        Intrinsics.checkNotNullParameter(keys, "keys");
        ArrayList arrayList = new ArrayList();
        for (String str : keys) {
            if (sharedPreferences.contains(str)) {
                arrayList.add(str);
            }
        }
        if (!arrayList.isEmpty()) {
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                editorEdit.remove((String) it.next());
            }
            editorEdit.apply();
        }
    }
}
