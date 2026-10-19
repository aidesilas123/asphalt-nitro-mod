package com.mbridge.msdk.playercommon.exoplayer2.text.ttml;

/* JADX INFO: loaded from: classes4.dex */
final class TtmlRegion {
    public final String id;
    public final float line;
    public final int lineAnchor;
    public final int lineType;
    public final float position;
    public final float textSize;
    public final int textSizeType;
    public final float width;

    public TtmlRegion(String str) {
        this(str, Float.MIN_VALUE, Float.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Float.MIN_VALUE, Integer.MIN_VALUE, Float.MIN_VALUE);
    }

    public TtmlRegion(String str, float f2, float f3, int i, int i2, float f4, int i3, float f5) {
        this.id = str;
        this.position = f2;
        this.line = f3;
        this.lineType = i;
        this.lineAnchor = i2;
        this.width = f4;
        this.textSizeType = i3;
        this.textSize = f5;
    }
}
