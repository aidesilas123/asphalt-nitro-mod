package com.google.zxing.qrcode.decoder;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
abstract class DataMask {
    public static final DataMask a;
    public static final DataMask b;
    public static final DataMask c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final DataMask f4412d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final DataMask f4413e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final DataMask f4414f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final DataMask f4415g;
    public static final DataMask h;
    private static final /* synthetic */ DataMask[] i;

    enum a extends DataMask {
        a(String str, int i) {
            super(str, i, null);
        }
    }

    static {
        a aVar = new a("DATA_MASK_000", 0);
        a = aVar;
        DataMask dataMask = new DataMask("DATA_MASK_001", 1) { // from class: com.google.zxing.qrcode.decoder.DataMask.b
            {
                a aVar2 = null;
            }
        };
        b = dataMask;
        DataMask dataMask2 = new DataMask("DATA_MASK_010", 2) { // from class: com.google.zxing.qrcode.decoder.DataMask.c
            {
                a aVar2 = null;
            }
        };
        c = dataMask2;
        DataMask dataMask3 = new DataMask("DATA_MASK_011", 3) { // from class: com.google.zxing.qrcode.decoder.DataMask.d
            {
                a aVar2 = null;
            }
        };
        f4412d = dataMask3;
        DataMask dataMask4 = new DataMask("DATA_MASK_100", 4) { // from class: com.google.zxing.qrcode.decoder.DataMask.e
            {
                a aVar2 = null;
            }
        };
        f4413e = dataMask4;
        DataMask dataMask5 = new DataMask("DATA_MASK_101", 5) { // from class: com.google.zxing.qrcode.decoder.DataMask.f
            {
                a aVar2 = null;
            }
        };
        f4414f = dataMask5;
        DataMask dataMask6 = new DataMask("DATA_MASK_110", 6) { // from class: com.google.zxing.qrcode.decoder.DataMask.g
            {
                a aVar2 = null;
            }
        };
        f4415g = dataMask6;
        DataMask dataMask7 = new DataMask("DATA_MASK_111", 7) { // from class: com.google.zxing.qrcode.decoder.DataMask.h
            {
                a aVar2 = null;
            }
        };
        h = dataMask7;
        i = new DataMask[]{aVar, dataMask, dataMask2, dataMask3, dataMask4, dataMask5, dataMask6, dataMask7};
    }

    private DataMask(String str, int i2) {
    }

    /* synthetic */ DataMask(String str, int i2, a aVar) {
        this(str, i2);
    }

    public static DataMask valueOf(String str) {
        return (DataMask) Enum.valueOf(DataMask.class, str);
    }

    public static DataMask[] values() {
        return (DataMask[]) i.clone();
    }
}
