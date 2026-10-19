###### Class com.hyprmx.android.sdk.initialization.h.b (com.hyprmx.android.sdk.initialization.h$b)
.class public final Lcom/hyprmx/android/sdk/initialization/h$b;
.super Lcom/hyprmx/android/sdk/initialization/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/initialization/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/hyprmx/android/sdk/initialization/h$b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/hyprmx/android/sdk/initialization/h$b;

    invoke-direct {v0}, Lcom/hyprmx/android/sdk/initialization/h$b;-><init>()V

    sput-object v0, Lcom/hyprmx/android/sdk/initialization/h$b;->a:Lcom/hyprmx/android/sdk/initialization/h$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hyprmx/android/sdk/initialization/h;-><init>(I)V

    return-void
.end method
