package com.json.adqualitysdk.sdk.i;

import android.text.TextUtils;
import android.view.Gravity;
import android.view.View;
import android.widget.ExpandableListView;
import com.json.b4;

/* JADX INFO: loaded from: classes4.dex */
public final class hb extends gv<View.OnClickListener> implements View.OnClickListener {
    private static long b = -7045049626613246577L;
    private static int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static char f5709d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f5710e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f5711f = 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private a f5712g;

    public interface a {
        /* JADX INFO: renamed from: ｋ */
        void mo569(hb hbVar, View view);
    }

    public hb(View.OnClickListener onClickListener, a aVar) {
        super(onClickListener);
        this.f5712g = aVar;
    }

    private static String a(String str, String str2, int i, char c2, String str3) {
        String str4;
        Object charArray = str3;
        if (str3 != null) {
            charArray = str3.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        Object charArray2 = str2;
        if (str2 != null) {
            charArray2 = str2.toCharArray();
        }
        char[] cArr2 = (char[]) charArray2;
        Object charArray3 = str;
        if (str != null) {
            charArray3 = str.toCharArray();
        }
        char[] cArr3 = (char[]) charArray3;
        synchronized (j.f124) {
            char[] cArr4 = (char[]) cArr3.clone();
            char[] cArr5 = (char[]) cArr2.clone();
            cArr4[0] = (char) (c2 ^ cArr4[0]);
            cArr5[2] = (char) (cArr5[2] + ((char) i));
            int length = cArr.length;
            char[] cArr6 = new char[length];
            j.f125 = 0;
            while (true) {
                int i2 = j.f125;
                if (i2 < length) {
                    int i3 = (i2 + 2) % 4;
                    int i4 = (i2 + 3) % 4;
                    char c3 = (char) (((cArr4[i2 % 4] * 32718) + cArr5[i3]) % 65535);
                    j.f126 = c3;
                    cArr5[i4] = (char) (((cArr4[i4] * 32718) + cArr5[i3]) / 65535);
                    cArr4[i4] = c3;
                    int i5 = j.f125;
                    cArr6[i5] = (char) (((((long) (cArr[i5] ^ cArr4[i4])) ^ b) ^ ((long) c)) ^ ((long) f5709d));
                    j.f125 = i5 + 1;
                } else {
                    str4 = new String(cArr6);
                }
            }
        }
        return str4;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = f5711f + 103;
        f5710e = i % 128;
        try {
            if (i % 2 != 0) {
                this.f5712g.mo569(this, view);
                int i2 = 68 / 0;
            } else {
                this.f5712g.mo569(this, view);
            }
        } catch (Throwable th) {
            jy.m987(a("㲙ཱུ\uf769䒹", "ᖏ\udcb8\uf4b0鸺", (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)) + 1, (char) TextUtils.getOffsetBefore("", 0), "꣏냌튎\uecc8ỗ쌕놑경绰괪颪袯諷矛暬陦쐝雀⼘㗚\uf14fᐯ鰌緟").intern(), a("\uf4aeѣ吚䅀", "ᖏ\udcb8\uf4b0鸺", TextUtils.indexOf("", "", 0, 0), (char) (Gravity.getAbsoluteGravity(0, 0) + 16468), "\ue3fc튓ʾ獰迭滝魂咆䄾귺\u0df1磱鈜毲圕厬쁫왛・䴱⟑ꨦ⯐嫖ʅ蝉Ǆ贪").intern(), th, false);
        }
        if ((mo406() != null ? 'U' : b4.R) != 'U') {
            return;
        }
        mo406().onClick(view);
        int i3 = f5711f + 125;
        f5710e = i3 % 128;
        int i4 = i3 % 2;
    }
}
