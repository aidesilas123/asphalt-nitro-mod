###### Class com.hyprmx.android.sdk.api.data.m (com.hyprmx.android.sdk.api.data.m)
.class public final enum Lcom/hyprmx/android/sdk/api/data/m;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hyprmx/android/sdk/api/data/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/hyprmx/android/sdk/api/data/m;

.field public static final enum b:Lcom/hyprmx/android/sdk/api/data/m;

.field public static final enum c:Lcom/hyprmx/android/sdk/api/data/m;

.field public static final synthetic d:[Lcom/hyprmx/android/sdk/api/data/m;


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    new-instance v0, Lcom/hyprmx/android/sdk/api/data/m;

    const-string v1, "PORTRAIT"

    const-string v2, "portrait"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/hyprmx/android/sdk/api/data/m;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/hyprmx/android/sdk/api/data/m;->a:Lcom/hyprmx/android/sdk/api/data/m;

    new-instance v1, Lcom/hyprmx/android/sdk/api/data/m;

    const-string v2, "LANDSCAPE"

    const-string v4, "landscape"

    const/4 v5, 0x1

    invoke-direct {v1, v2, v4, v5}, Lcom/hyprmx/android/sdk/api/data/m;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lcom/hyprmx/android/sdk/api/data/m;->b:Lcom/hyprmx/android/sdk/api/data/m;

    new-instance v2, Lcom/hyprmx/android/sdk/api/data/m;

    const-string v4, "ANY"

    const-string v6, ""

    const/4 v7, 0x2

    invoke-direct {v2, v4, v6, v7}, Lcom/hyprmx/android/sdk/api/data/m;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v2, Lcom/hyprmx/android/sdk/api/data/m;->c:Lcom/hyprmx/android/sdk/api/data/m;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/hyprmx/android/sdk/api/data/m;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    sput-object v4, Lcom/hyprmx/android/sdk/api/data/m;->d:[Lcom/hyprmx/android/sdk/api/data/m;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hyprmx/android/sdk/api/data/m;
    .registers 2

    const-class v0, Lcom/hyprmx/android/sdk/api/data/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hyprmx/android/sdk/api/data/m;

    return-object p0
.end method

.method public static values()[Lcom/hyprmx/android/sdk/api/data/m;
    .registers 1

    sget-object v0, Lcom/hyprmx/android/sdk/api/data/m;->d:[Lcom/hyprmx/android/sdk/api/data/m;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hyprmx/android/sdk/api/data/m;

    return-object v0
.end method
