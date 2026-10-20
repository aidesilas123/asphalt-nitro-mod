###### Class com.tapjoy.internal.w1 (com.tapjoy.internal.w1)
.class public final Lcom/tapjoy/internal/w1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/tapjoy/internal/o3;

.field public final b:Lcom/tapjoy/internal/o3;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "fiverocks"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    new-instance v0, Lcom/tapjoy/internal/o3;

    const-string v1, "noMoreToday.date"

    invoke-direct {v0, p1, v1}, Lcom/tapjoy/internal/o3;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/internal/w1;->a:Lcom/tapjoy/internal/o3;

    new-instance v0, Lcom/tapjoy/internal/o3;

    const-string v1, "noMoreToday.actionIds"

    invoke-direct {v0, p1, v1}, Lcom/tapjoy/internal/o3;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/internal/w1;->b:Lcom/tapjoy/internal/o3;

    invoke-virtual {p0}, Lcom/tapjoy/internal/w1;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    iget-object v0, p0, Lcom/tapjoy/internal/w1;->a:Lcom/tapjoy/internal/o3;

    invoke-virtual {v0}, Lcom/tapjoy/internal/o3;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/tapjoy/internal/w1;->a:Lcom/tapjoy/internal/o3;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/o3;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/internal/w1;->b:Lcom/tapjoy/internal/o3;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/o3;->b(Ljava/lang/String;)V

    :cond_2e
    return-void
.end method
