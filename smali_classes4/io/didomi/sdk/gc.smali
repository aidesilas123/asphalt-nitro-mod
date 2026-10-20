###### Class io.didomi.drawable.gc (io.didomi.sdk.gc)
.class public final synthetic Lio/didomi/sdk/gc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/K7$a;

.field public final synthetic b:Lio/didomi/sdk/V7$e;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/K7$a;Lio/didomi/sdk/V7$e;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/gc;->a:Lio/didomi/sdk/K7$a;

    iput-object p2, p0, Lio/didomi/sdk/gc;->b:Lio/didomi/sdk/V7$e;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/gc;->a:Lio/didomi/sdk/K7$a;

    iget-object v1, p0, Lio/didomi/sdk/gc;->b:Lio/didomi/sdk/V7$e;

    invoke-static {v0, v1, p1}, Lio/didomi/sdk/P7;->b(Lio/didomi/sdk/K7$a;Lio/didomi/sdk/V7$e;Landroid/view/View;)V

    return-void
.end method
