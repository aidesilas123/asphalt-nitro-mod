###### Class io.didomi.drawable.wd (io.didomi.sdk.wd)
.class public final synthetic Lio/didomi/sdk/wd;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lkotlin/jvm/b/a;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/b/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/wd;->a:Lkotlin/jvm/b/a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/wd;->a:Lkotlin/jvm/b/a;

    invoke-static {v0, p1}, Lio/didomi/sdk/c9;->c(Lkotlin/jvm/b/a;Landroid/view/View;)V

    return-void
.end method
