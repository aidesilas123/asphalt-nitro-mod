###### Class com.hyprmx.android.sdk.core.j.a.b (com.hyprmx.android.sdk.core.j$a$b)
.class public final Lcom/hyprmx/android/sdk/core/j$a$b;
.super Lcom/hyprmx/android/sdk/core/j$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/core/j$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/hyprmx/android/sdk/core/j$a$b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/hyprmx/android/sdk/core/j$a$b;

    invoke-direct {v0}, Lcom/hyprmx/android/sdk/core/j$a$b;-><init>()V

    sput-object v0, Lcom/hyprmx/android/sdk/core/j$a$b;->a:Lcom/hyprmx/android/sdk/core/j$a$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hyprmx/android/sdk/core/j$a;-><init>(I)V

    return-void
.end method
