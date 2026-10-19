###### Class com.hyprmx.android.sdk.utility.p.a (com.hyprmx.android.sdk.utility.p$a)
.class public final Lcom/hyprmx/android/sdk/utility/p$a;
.super Lcom/hyprmx/android/sdk/utility/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/utility/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/hyprmx/android/sdk/utility/p$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/hyprmx/android/sdk/utility/p$a;

    invoke-direct {v0}, Lcom/hyprmx/android/sdk/utility/p$a;-><init>()V

    sput-object v0, Lcom/hyprmx/android/sdk/utility/p$a;->a:Lcom/hyprmx/android/sdk/utility/p$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hyprmx/android/sdk/utility/p;-><init>(I)V

    return-void
.end method
