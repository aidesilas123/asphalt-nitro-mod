###### Class io.didomi.drawable.uf (io.didomi.sdk.uf)
.class public final synthetic Lio/didomi/sdk/uf;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/w0;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/w0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/uf;->a:Lio/didomi/sdk/w0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/uf;->a:Lio/didomi/sdk/w0;

    invoke-static {v0, p1}, Lio/didomi/sdk/w0;->d(Lio/didomi/sdk/w0;Landroid/view/View;)V

    return-void
.end method
