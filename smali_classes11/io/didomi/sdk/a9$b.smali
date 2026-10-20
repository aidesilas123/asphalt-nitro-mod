###### Class io.didomi.sdk.a9.b (io.didomi.sdk.a9$b)
.class final Lio/didomi/sdk/a9$b;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/a9;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/l<",
        "Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
        "consentState",
        "",
        "a",
        "(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/h9;

.field final synthetic b:Lio/didomi/sdk/a9;


# direct methods
.method constructor <init>(Lio/didomi/sdk/h9;Lio/didomi/sdk/a9;)V
    .registers 3

    iput-object p1, p0, Lio/didomi/sdk/a9$b;->a:Lio/didomi/sdk/h9;

    iput-object p2, p0, Lio/didomi/sdk/a9$b;->b:Lio/didomi/sdk/a9;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 4

    if-eqz p1, :cond_27

    iget-object v0, p0, Lio/didomi/sdk/a9$b;->a:Lio/didomi/sdk/h9;

    invoke-virtual {v0}, Lio/didomi/sdk/h9;->C()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_27

    :cond_b
    iget-object v0, p0, Lio/didomi/sdk/a9$b;->a:Lio/didomi/sdk/h9;

    invoke-virtual {v0}, Lio/didomi/sdk/h9;->J()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/models/InternalVendor;

    if-nez v0, :cond_1a

    return-void

    :cond_1a
    iget-object v1, p0, Lio/didomi/sdk/a9$b;->a:Lio/didomi/sdk/h9;

    invoke-virtual {v1, v0}, Lio/didomi/sdk/h9;->G(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lio/didomi/sdk/a9$b;->b:Lio/didomi/sdk/a9;

    invoke-static {v1, v0, p1}, Lio/didomi/sdk/a9;->a(Lio/didomi/sdk/a9;Lio/didomi/sdk/models/InternalVendor;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    :cond_27
    :goto_27
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    invoke-virtual {p0, p1}, Lio/didomi/sdk/a9$b;->a(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
