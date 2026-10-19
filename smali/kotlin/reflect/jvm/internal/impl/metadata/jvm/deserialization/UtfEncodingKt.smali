###### Class kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.UtfEncodingKt (kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.UtfEncodingKt)
.class public final Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/UtfEncodingKt;
.super Ljava/lang/Object;
.source "utfEncoding.kt"


# direct methods
.method public static final stringsToBytes([Ljava/lang/String;)[B
    .registers 12

    const-string v0, "strings"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_9
    if-ge v2, v0, :cond_15

    aget-object v4, p0, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_15
    new-array v0, v3, [B

    array-length v2, p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1a
    if-ge v4, v2, :cond_3a

    aget-object v6, p0, v4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_37

    const/4 v8, 0x0

    :goto_27
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    int-to-byte v10, v10

    aput-byte v10, v0, v5

    if-eq v8, v7, :cond_36

    add-int/lit8 v8, v8, 0x1

    move v5, v9

    goto :goto_27

    :cond_36
    move v5, v9

    :cond_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_3a
    return-object v0
.end method
