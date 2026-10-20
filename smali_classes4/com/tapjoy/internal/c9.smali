###### Class com.tapjoy.internal.c9 (com.tapjoy.internal.c9)
.class public final Lcom/tapjoy/internal/c9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/ArrayList;

.field public c:Ljava/lang/CharSequence;

.field public d:Ljava/lang/CharSequence;

.field public e:Landroid/app/PendingIntent;

.field public f:Landroid/graphics/Bitmap;

.field public g:I

.field public final h:Z

.field public i:Lcom/tapjoy/internal/n9;

.field public final j:Ljava/lang/String;

.field public final k:Landroid/app/Notification;

.field public final l:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/c9;->b:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/internal/c9;->h:Z

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/c9;->k:Landroid/app/Notification;

    iput-object p1, p0, Lcom/tapjoy/internal/c9;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/tapjoy/internal/c9;->j:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    const/4 p1, -0x1

    iput p1, v0, Landroid/app/Notification;->audioStreamType:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/tapjoy/internal/c9;->g:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/c9;->l:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/s8;)Lcom/tapjoy/internal/c9;
    .registers 3

    iget-object v0, p0, Lcom/tapjoy/internal/c9;->i:Lcom/tapjoy/internal/n9;

    if-eq v0, p1, :cond_f

    iput-object p1, p0, Lcom/tapjoy/internal/c9;->i:Lcom/tapjoy/internal/n9;

    iget-object v0, p1, Lcom/tapjoy/internal/n9;->a:Lcom/tapjoy/internal/c9;

    if-eq v0, p0, :cond_f

    iput-object p0, p1, Lcom/tapjoy/internal/n9;->a:Lcom/tapjoy/internal/c9;

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/c9;->a(Lcom/tapjoy/internal/s8;)Lcom/tapjoy/internal/c9;

    :cond_f
    return-object p0
.end method
