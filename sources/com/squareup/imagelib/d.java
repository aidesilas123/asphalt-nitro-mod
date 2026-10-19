package com.squareup.imagelib;

import android.graphics.Bitmap;

/* JADX INFO: compiled from: Cache.java */
/* JADX INFO: loaded from: classes4.dex */
public interface d {
    public static final d a = new a();

    /* JADX INFO: compiled from: Cache.java */
    class a implements d {
        a() {
        }

        @Override // com.squareup.imagelib.d
        public int a() {
            return 0;
        }

        @Override // com.squareup.imagelib.d
        public void b(String str, Bitmap bitmap) {
        }

        @Override // com.squareup.imagelib.d
        public Bitmap get(String str) {
            return null;
        }

        @Override // com.squareup.imagelib.d
        public int size() {
            return 0;
        }
    }

    int a();

    void b(String str, Bitmap bitmap);

    Bitmap get(String str);

    int size();
}
