package lzma.sdk.lzma;

/* JADX INFO: loaded from: classes5.dex */
public class Base {
    public static int getLenToPosState(int i) {
        int i2 = i - 2;
        if (i2 < 4) {
            return i2;
        }
        return 3;
    }

    public static int stateInit() {
        return 0;
    }

    public static boolean stateIsCharState(int i) {
        return i < 7;
    }

    public static int stateUpdateChar(int i) {
        if (i < 4) {
            return 0;
        }
        return i < 10 ? i - 3 : i - 6;
    }

    public static int stateUpdateMatch(int i) {
        return i < 7 ? 7 : 10;
    }

    public static int stateUpdateRep(int i) {
        return i < 7 ? 8 : 11;
    }

    public static int stateUpdateShortRep(int i) {
        return i < 7 ? 9 : 11;
    }
}
