###### Class com.fyber.inneractive.sdk.web.q (com.fyber.inneractive.sdk.web.q)
.class public Lcom/fyber/inneractive/sdk/web/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/fyber/inneractive/sdk/web/i;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/web/i;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/q;->b:Lcom/fyber/inneractive/sdk/web/i;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/web/q;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/web/q;->b:Lcom/fyber/inneractive/sdk/web/i;

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/web/q;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/fyber/inneractive/sdk/web/i;->a(Ljava/lang/String;)V

    return-void
.end method
