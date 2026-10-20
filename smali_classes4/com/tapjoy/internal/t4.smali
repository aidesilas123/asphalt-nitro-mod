###### Class com.tapjoy.internal.t4 (com.tapjoy.internal.t4)
.class public final Lcom/tapjoy/internal/t4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic a:Lcom/tapjoy/internal/g2;

.field public final synthetic b:Lcom/tapjoy/internal/i6;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/i6;Lcom/tapjoy/internal/g2;)V
    .registers 3

    iput-object p1, p0, Lcom/tapjoy/internal/t4;->b:Lcom/tapjoy/internal/i6;

    iput-object p2, p0, Lcom/tapjoy/internal/t4;->a:Lcom/tapjoy/internal/g2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object p1, p0, Lcom/tapjoy/internal/t4;->a:Lcom/tapjoy/internal/g2;

    iget-object v0, p0, Lcom/tapjoy/internal/t4;->b:Lcom/tapjoy/internal/i6;

    iget-object v0, v0, Lcom/tapjoy/internal/i6;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/g2;->a(Ljava/lang/String;)V

    return-void
.end method
