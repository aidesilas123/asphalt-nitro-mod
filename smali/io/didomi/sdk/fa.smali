###### Class io.didomi.drawable.fa (io.didomi.sdk.fa)
.class public final synthetic Lio/didomi/sdk/fa;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/D2;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/D2;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/fa;->a:Lio/didomi/sdk/D2;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/fa;->a:Lio/didomi/sdk/D2;

    invoke-static {v0, p1}, Lio/didomi/sdk/E6;->m(Lio/didomi/sdk/D2;Landroid/view/View;)V

    return-void
.end method
