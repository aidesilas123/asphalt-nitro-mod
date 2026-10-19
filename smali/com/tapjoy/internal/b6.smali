###### Class com.tapjoy.internal.b6 (com.tapjoy.internal.b6)
.class public final Lcom/tapjoy/internal/b6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/tapjoy/TJActivity;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/internal/b6;->a:Lcom/tapjoy/TJActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p2, p0, Lcom/tapjoy/internal/b6;->a:Lcom/tapjoy/TJActivity;

    invoke-virtual {p2}, Lcom/tapjoy/TJActivity;->b()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
