###### Class io.didomi.drawable.md (io.didomi.sdk.md)
.class public final synthetic Lio/didomi/sdk/md;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/Z8;

.field public final synthetic b:Lio/didomi/sdk/U8$a;

.field public final synthetic c:Lio/didomi/sdk/Y8;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/Z8;Lio/didomi/sdk/U8$a;Lio/didomi/sdk/Y8;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/md;->a:Lio/didomi/sdk/Z8;

    iput-object p2, p0, Lio/didomi/sdk/md;->b:Lio/didomi/sdk/U8$a;

    iput-object p3, p0, Lio/didomi/sdk/md;->c:Lio/didomi/sdk/Y8;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/md;->a:Lio/didomi/sdk/Z8;

    iget-object v1, p0, Lio/didomi/sdk/md;->b:Lio/didomi/sdk/U8$a;

    iget-object v2, p0, Lio/didomi/sdk/md;->c:Lio/didomi/sdk/Y8;

    invoke-static {v0, v1, v2, p1}, Lio/didomi/sdk/Y8;->b(Lio/didomi/sdk/Z8;Lio/didomi/sdk/U8$a;Lio/didomi/sdk/Y8;Landroid/view/View;)V

    return-void
.end method
