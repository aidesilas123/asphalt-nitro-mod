###### Class io.didomi.sdk.O.b (io.didomi.sdk.O$b)
.class final Lio/didomi/sdk/O$b;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/O;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/l<",
        "Ljava/lang/Boolean;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "",
        "isVisible",
        "",
        "a",
        "(Z)V"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/O;


# direct methods
.method constructor <init>(Lio/didomi/sdk/O;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/O$b;->a:Lio/didomi/sdk/O;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 2

    if-nez p1, :cond_7

    iget-object p1, p0, Lio/didomi/sdk/O$b;->a:Lio/didomi/sdk/O;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/a;->dismiss()V

    :cond_7
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lio/didomi/sdk/O$b;->a(Z)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
