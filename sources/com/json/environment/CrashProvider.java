package com.json.environment;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.net.Uri;
import com.json.b3;

/* JADX INFO: loaded from: classes4.dex */
public class CrashProvider extends ContentProvider {
    Context a;
    b3 b;
    String c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Uri f6090e;
    String h;
    String i;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    UriMatcher f6089d = new UriMatcher(-1);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final int f6091f = 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final int f6092g = 2;
    final String j = "REPORTS";

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        int iMatch = this.f6089d.match(uri);
        if (iMatch == 1) {
            return this.h;
        }
        if (iMatch == 2) {
            return this.i;
        }
        throw new IllegalArgumentException("Invalid URI: " + uri);
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        this.a = getContext();
        this.b = new b3(this.a);
        this.c = this.a.getPackageName();
        this.f6090e = Uri.parse("content://" + this.c + "/REPORTS");
        this.h = "vnd.android.cursor.dir/CrashReporter.Reports";
        this.i = "vnd.android.cursor.item/CrashReporter/Reports";
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        int iMatch = this.f6089d.match(uri);
        if (iMatch == 1) {
            return b3.c();
        }
        if (iMatch == 2) {
            return b3.a(Integer.parseInt(uri.getLastPathSegment()));
        }
        throw new IllegalArgumentException("Invalid URI: " + uri);
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
