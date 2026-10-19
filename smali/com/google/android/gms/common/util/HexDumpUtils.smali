###### Class com.google.android.gms.common.util.HexDumpUtils (com.google.android.gms.common.util.HexDumpUtils)
.class public final Lcom/google/android/gms/common/util/HexDumpUtils;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.2.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump([BIIZ)Ljava/lang/String;
    .registers 14
    .param p0    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    if-eqz p0, :cond_c2

    array-length v0, p0

    if-eqz v0, :cond_c2

    if-ltz p1, :cond_c2

    if-lez p2, :cond_c2

    add-int v1, p1, p2

    if-le v1, v0, :cond_f

    goto/16 :goto_c2

    :cond_f
    if-eqz p3, :cond_14

    const/16 v0, 0x4b

    goto :goto_16

    :cond_14
    const/16 v0, 0x39

    :goto_16
    add-int/lit8 v1, p2, 0xf

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    div-int/2addr v1, v3

    mul-int v0, v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    move v1, p2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_26
    if-lez v1, :cond_bd

    const/16 v6, 0x8

    const/4 v7, 0x1

    if-nez v4, :cond_56

    const/high16 v5, 0x10000

    if-ge p2, v5, :cond_43

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v0

    const-string v8, "%04X:"

    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_54

    :cond_43
    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v0

    const-string v8, "%08X:"

    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_54
    move v5, p1

    goto :goto_5d

    :cond_56
    if-ne v4, v6, :cond_5d

    const-string v8, " -"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5d
    :goto_5d
    new-array v7, v7, [Ljava/lang/Object;

    aget-byte v8, p0, p1

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    const-string v8, " %02X"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v4, v4, 0x1

    if-eqz p3, :cond_af

    if-eq v4, v3, :cond_7c

    if-nez v1, :cond_af

    :cond_7c
    rsub-int/lit8 v7, v4, 0x10

    if-lez v7, :cond_8b

    const/4 v8, 0x0

    :goto_81
    if-ge v8, v7, :cond_8b

    const-string v9, "   "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_81

    :cond_8b
    const-string v8, "  "

    if-lt v7, v6, :cond_92

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_92
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    :goto_96
    if-ge v6, v4, :cond_af

    add-int v7, v5, v6

    aget-byte v7, p0, v7

    int-to-char v7, v7

    const/16 v8, 0x20

    const/16 v9, 0x2e

    if-lt v7, v8, :cond_a7

    const/16 v8, 0x7e

    if-le v7, v8, :cond_a9

    :cond_a7
    const/16 v7, 0x2e

    :cond_a9
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_96

    :cond_af
    if-eq v4, v3, :cond_b3

    if-nez v1, :cond_b9

    :cond_b3
    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    :cond_b9
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_26

    :cond_bd
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c2
    :goto_c2
    const/4 p0, 0x0

    return-object p0
.end method
