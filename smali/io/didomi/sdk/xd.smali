###### Class io.didomi.drawable.xd (io.didomi.sdk.xd)
.class public final synthetic Lio/didomi/sdk/xd;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/Y8$a;

.field public final synthetic b:Lio/didomi/sdk/U8$c;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/Y8$a;Lio/didomi/sdk/U8$c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/xd;->a:Lio/didomi/sdk/Y8$a;

    iput-object p2, p0, Lio/didomi/sdk/xd;->b:Lio/didomi/sdk/U8$c;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/xd;->a:Lio/didomi/sdk/Y8$a;

    iget-object v1, p0, Lio/didomi/sdk/xd;->b:Lio/didomi/sdk/U8$c;

    invoke-static {v0, v1, p1}, Lio/didomi/sdk/f9;->e(Lio/didomi/sdk/Y8$a;Lio/didomi/sdk/U8$c;Landroid/view/View;)V

    return-void
.end method
