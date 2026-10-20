###### Class com.hyprmx.android.sdk.core.j.a.c (com.hyprmx.android.sdk.core.j$a$c)
.class public final Lcom/hyprmx/android/sdk/core/j$a$c;
.super Lcom/hyprmx/android/sdk/core/j$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/core/j$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/hyprmx/android/sdk/core/j;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/core/j;)V
    .registers 3

    const-string v0, "hyprMXController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hyprmx/android/sdk/core/j$a;-><init>(I)V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/core/j$a$c;->a:Lcom/hyprmx/android/sdk/core/j;

    return-void
.end method
