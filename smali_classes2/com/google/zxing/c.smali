###### Class com.google.zxing.c (com.google.zxing.c)
.class public final Lcom/google/zxing/c;
.super Ljava/lang/Object;
.source "MultiFormatWriter.java"

# interfaces
.implements Lcom/google/zxing/f;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/g;
        }
    .end annotation

    sget-object v0, Lcom/google/zxing/c$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_7a

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "No encoder available for format "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_22
    new-instance v0, Lcom/google/zxing/h/a;

    invoke-direct {v0}, Lcom/google/zxing/h/a;-><init>()V

    goto :goto_6f

    :pswitch_28
    new-instance v0, Lcom/google/zxing/i/a;

    invoke-direct {v0}, Lcom/google/zxing/i/a;-><init>()V

    goto :goto_6f

    :pswitch_2e
    new-instance v0, Lcom/google/zxing/oned/b;

    invoke-direct {v0}, Lcom/google/zxing/oned/b;-><init>()V

    goto :goto_6f

    :pswitch_34
    new-instance v0, Lcom/google/zxing/pdf417/b;

    invoke-direct {v0}, Lcom/google/zxing/pdf417/b;-><init>()V

    goto :goto_6f

    :pswitch_3a
    new-instance v0, Lcom/google/zxing/oned/l;

    invoke-direct {v0}, Lcom/google/zxing/oned/l;-><init>()V

    goto :goto_6f

    :pswitch_40
    new-instance v0, Lcom/google/zxing/oned/Code128Writer;

    invoke-direct {v0}, Lcom/google/zxing/oned/Code128Writer;-><init>()V

    goto :goto_6f

    :pswitch_46
    new-instance v0, Lcom/google/zxing/oned/g;

    invoke-direct {v0}, Lcom/google/zxing/oned/g;-><init>()V

    goto :goto_6f

    :pswitch_4c
    new-instance v0, Lcom/google/zxing/oned/e;

    invoke-direct {v0}, Lcom/google/zxing/oned/e;-><init>()V

    goto :goto_6f

    :pswitch_52
    new-instance v0, Lcom/google/zxing/j/a;

    invoke-direct {v0}, Lcom/google/zxing/j/a;-><init>()V

    goto :goto_6f

    :pswitch_58
    new-instance v0, Lcom/google/zxing/oned/o;

    invoke-direct {v0}, Lcom/google/zxing/oned/o;-><init>()V

    goto :goto_6f

    :pswitch_5e
    new-instance v0, Lcom/google/zxing/oned/i;

    invoke-direct {v0}, Lcom/google/zxing/oned/i;-><init>()V

    goto :goto_6f

    :pswitch_64
    new-instance v0, Lcom/google/zxing/oned/u;

    invoke-direct {v0}, Lcom/google/zxing/oned/u;-><init>()V

    goto :goto_6f

    :pswitch_6a
    new-instance v0, Lcom/google/zxing/oned/j;

    invoke-direct {v0}, Lcom/google/zxing/oned/j;-><init>()V

    :goto_6f
    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/google/zxing/f;->a(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    return-object p1

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_64
        :pswitch_5e
        :pswitch_58
        :pswitch_52
        :pswitch_4c
        :pswitch_46
        :pswitch_40
        :pswitch_3a
        :pswitch_34
        :pswitch_2e
        :pswitch_28
        :pswitch_22
    .end packed-switch
.end method
