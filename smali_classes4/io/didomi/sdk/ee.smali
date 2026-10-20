###### Class io.didomi.drawable.ee (io.didomi.sdk.ee)
.class public final synthetic Lio/didomi/sdk/ee;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/b7$a;

.field public final synthetic b:Lio/didomi/sdk/x6$f;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/b7$a;Lio/didomi/sdk/x6$f;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/ee;->a:Lio/didomi/sdk/b7$a;

    iput-object p2, p0, Lio/didomi/sdk/ee;->b:Lio/didomi/sdk/x6$f;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/ee;->a:Lio/didomi/sdk/b7$a;

    iget-object v1, p0, Lio/didomi/sdk/ee;->b:Lio/didomi/sdk/x6$f;

    invoke-static {v0, v1, p1}, Lio/didomi/sdk/h7;->c(Lio/didomi/sdk/b7$a;Lio/didomi/sdk/x6$f;Landroid/view/View;)V

    return-void
.end method
