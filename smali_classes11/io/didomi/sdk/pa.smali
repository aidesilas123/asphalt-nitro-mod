###### Class io.didomi.drawable.pa (io.didomi.sdk.pa)
.class public final synthetic Lio/didomi/sdk/pa;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/D4;

.field public final synthetic b:Lio/didomi/sdk/I4;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/D4;Lio/didomi/sdk/I4;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/pa;->a:Lio/didomi/sdk/D4;

    iput-object p2, p0, Lio/didomi/sdk/pa;->b:Lio/didomi/sdk/I4;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/pa;->a:Lio/didomi/sdk/D4;

    iget-object v1, p0, Lio/didomi/sdk/pa;->b:Lio/didomi/sdk/I4;

    invoke-static {v0, v1, p1}, Lio/didomi/sdk/I4;->c(Lio/didomi/sdk/D4;Lio/didomi/sdk/I4;Landroid/view/View;)V

    return-void
.end method
