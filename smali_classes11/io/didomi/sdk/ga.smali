###### Class io.didomi.drawable.ga (io.didomi.sdk.ga)
.class public final synthetic Lio/didomi/sdk/ga;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/E6;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/E6;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/ga;->a:Lio/didomi/sdk/E6;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/ga;->a:Lio/didomi/sdk/E6;

    invoke-static {v0, p1}, Lio/didomi/sdk/E6;->n(Lio/didomi/sdk/E6;Landroid/view/View;)V

    return-void
.end method
