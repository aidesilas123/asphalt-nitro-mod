###### Class io.didomi.sdk.view.mobile.HeaderView.c (io.didomi.sdk.view.mobile.HeaderView$c)
.class final synthetic Lio/didomi/sdk/view/mobile/HeaderView$c;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/view/mobile/HeaderView;->a(Lio/didomi/sdk/C3;Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/b/a<",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 9

    const-class v3, Lio/didomi/sdk/view/mobile/HeaderView;

    const/4 v1, 0x0

    const-string v4, "onLogoAbsent"

    const-string v5, "onLogoAbsent()V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/r;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lkotlin/jvm/internal/l;->receiver:Ljava/lang/Object;

    check-cast v0, Lio/didomi/sdk/view/mobile/HeaderView;

    invoke-static {v0}, Lio/didomi/sdk/view/mobile/HeaderView;->a(Lio/didomi/sdk/view/mobile/HeaderView;)V

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/view/mobile/HeaderView$c;->a()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method
