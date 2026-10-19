###### Class com.json.zc (com.ironsource.zc)
.class public Lcom/ironsource/zc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not defined message for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x194

    if-eq p0, v1, :cond_3a

    packed-switch p0, :pswitch_data_3e

    packed-switch p0, :pswitch_data_48

    packed-switch p0, :pswitch_data_54

    goto :goto_3c

    :pswitch_1f
    const-string v0, "failed to create folder for file"

    goto :goto_3c

    :pswitch_22
    const-string v0, "out of memory exception"

    goto :goto_3c

    :pswitch_25
    const-string v0, "file not found exception"

    goto :goto_3c

    :pswitch_28
    const-string v0, "http error code"

    goto :goto_3c

    :pswitch_2b
    const-string v0, "uri syntax exception"

    goto :goto_3c

    :pswitch_2e
    const-string v0, "io exception"

    goto :goto_3c

    :pswitch_31
    const-string v0, "socket timeout exception"

    goto :goto_3c

    :pswitch_34
    const-string v0, "http empty response"

    goto :goto_3c

    :pswitch_37
    const-string v0, "malformed url exception"

    goto :goto_3c

    :cond_3a
    :pswitch_3a
    const-string v0, "http not found"

    :goto_3c
    return-object v0

    nop

    :pswitch_data_3e
    .packed-switch 0x3ec
        :pswitch_37
        :pswitch_3a
        :pswitch_34
    .end packed-switch

    :pswitch_data_48
    .packed-switch 0x3f0
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
    .end packed-switch

    :pswitch_data_54
    .packed-switch 0x3fa
        :pswitch_25
        :pswitch_22
        :pswitch_1f
    .end packed-switch
.end method
