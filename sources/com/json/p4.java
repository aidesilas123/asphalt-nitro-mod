package com.json;

import android.content.Context;
import android.os.Message;
import android.text.TextUtils;
import com.json.n4;
import com.json.sdk.utils.IronSourceStorageUtils;
import com.json.sdk.utils.SDKUtils;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class p4 {
    private final Context a;
    private final s3 b;
    private final o4 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final g9 f6507d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final e5 f6508e = e9.h().c();

    class a implements fa {
        final /* synthetic */ fa a;

        /* JADX INFO: renamed from: com.ironsource.p4$a$a, reason: collision with other inner class name */
        class C0361a extends JSONObject {
            C0361a() throws JSONException {
                put("lastReferencedTime", System.currentTimeMillis());
            }
        }

        a(fa faVar) {
            this.a = faVar;
        }

        @Override // com.json.fa
        public void a(q6 q6Var) {
            this.a.a(q6Var);
            try {
                p4.this.f6507d.d(q6Var.getName(), new C0361a());
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // com.json.fa
        public void a(q6 q6Var, i6 i6Var) {
            this.a.a(q6Var, i6Var);
        }
    }

    public p4(Context context, s3 s3Var, o4 o4Var, g9 g9Var) {
        this.a = context;
        this.b = s3Var;
        this.c = o4Var;
        this.f6507d = g9Var;
    }

    public void a(q6 q6Var) throws Exception {
        if (q6Var.exists()) {
            if (!q6Var.delete()) {
                throw new Exception("Failed to delete file");
            }
            this.f6507d.c(q6Var.getName());
        }
    }

    public void a(q6 q6Var, String str, int i, int i2, fa faVar) throws Exception {
        if (TextUtils.isEmpty(str)) {
            throw new Exception(n4.a.a);
        }
        if (this.f6508e.a(this.b.a()) <= 0) {
            throw new Exception(p2.A);
        }
        if (!SDKUtils.isExternalStorageAvailable()) {
            throw new Exception(p2.B);
        }
        if (!k2.g(this.a)) {
            throw new Exception(p2.C);
        }
        this.c.a(q6Var.getPath(), new a(faVar));
        if (!q6Var.exists()) {
            this.b.b(q6Var, str, i, i2, this.c);
            return;
        }
        Message message = new Message();
        message.obj = q6Var;
        message.what = 1015;
        this.c.sendMessage(message);
    }

    public void a(q6 q6Var, JSONObject jSONObject) throws Exception {
        if (jSONObject == null) {
            throw new Exception("Missing attributes to update");
        }
        if (!q6Var.exists()) {
            throw new Exception("File does not exist");
        }
        if (!this.f6507d.h(q6Var.getName(), jSONObject)) {
            throw new Exception("Failed to update attribute");
        }
    }

    public void b(q6 q6Var) throws Exception {
        if (q6Var.exists()) {
            ArrayList<q6> filesInFolderRecursive = IronSourceStorageUtils.getFilesInFolderRecursive(q6Var);
            if (!(IronSourceStorageUtils.deleteFolderContentRecursive(q6Var) && q6Var.delete())) {
                throw new Exception("Failed to delete folder");
            }
            this.f6507d.e(filesInFolderRecursive);
        }
    }

    public JSONObject c(q6 q6Var) throws Exception {
        if (q6Var.exists()) {
            return IronSourceStorageUtils.buildFilesMapOfDirectory(q6Var, this.f6507d.g());
        }
        throw new Exception("Folder does not exist");
    }

    public long d(q6 q6Var) throws Exception {
        if (q6Var.exists()) {
            return IronSourceStorageUtils.getTotalSizeOfDir(q6Var);
        }
        throw new Exception("Folder does not exist");
    }
}
