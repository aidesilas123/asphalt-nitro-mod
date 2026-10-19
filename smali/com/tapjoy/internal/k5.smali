###### Class com.tapjoy.internal.k5 (com.tapjoy.internal.k5)
.class public final Lcom/tapjoy/internal/k5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Lcom/tapjoy/internal/g2;

.field public final synthetic c:Lcom/tapjoy/internal/i6;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/i6;Landroid/app/Activity;Lcom/tapjoy/internal/g2;)V
    .registers 4

    iput-object p1, p0, Lcom/tapjoy/internal/k5;->c:Lcom/tapjoy/internal/i6;

    iput-object p2, p0, Lcom/tapjoy/internal/k5;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/tapjoy/internal/k5;->b:Lcom/tapjoy/internal/g2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 7

    const/4 p1, 0x0

    sput-object p1, Lcom/tapjoy/internal/i6;->d:Lcom/tapjoy/internal/i6;

    iget-object v0, p0, Lcom/tapjoy/internal/k5;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/tapjoy/internal/k5;->c:Lcom/tapjoy/internal/i6;

    iget-object v1, v1, Lcom/tapjoy/internal/i6;->g:Lcom/tapjoy/internal/t3;

    iget-object v1, v1, Lcom/tapjoy/internal/t3;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_22

    :cond_12
    :try_start_12
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_20} :catch_21

    goto :goto_22

    :catch_21
    nop

    :goto_22
    iget-object v0, p0, Lcom/tapjoy/internal/k5;->c:Lcom/tapjoy/internal/i6;

    iget-object v1, v0, Lcom/tapjoy/internal/i6;->e:Lcom/tapjoy/internal/v1;

    iget-object v0, v0, Lcom/tapjoy/internal/i6;->g:Lcom/tapjoy/internal/t3;

    iget-object v0, v0, Lcom/tapjoy/internal/t3;->k:Ljava/util/LinkedHashMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object v2, p0, Lcom/tapjoy/internal/k5;->c:Lcom/tapjoy/internal/i6;

    iget-wide v2, v2, Lcom/tapjoy/internal/i6;->j:J

    iget-object v1, v1, Lcom/tapjoy/internal/v1;->i:Lcom/tapjoy/internal/i5;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/tapjoy/internal/r1;->b:Lcom/tapjoy/internal/r1;

    const-string v3, "view"

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/i5;->a(Lcom/tapjoy/internal/r1;Ljava/lang/String;)Lcom/tapjoy/internal/d4;

    move-result-object v2

    if-eqz v0, :cond_60

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    new-instance v4, Lcom/tapjoy/internal/h1;

    invoke-direct {v4, v3}, Lcom/tapjoy/internal/h1;-><init>(Ljava/io/StringWriter;)V

    :try_start_4a
    invoke-virtual {v4, v0}, Lcom/tapjoy/internal/h1;->a(Ljava/lang/Object;)V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_5b

    :try_start_4d
    iget-object v0, v4, Lcom/tapjoy/internal/h1;->a:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_55} :catch_56

    goto :goto_60

    :catch_56
    move-exception v0

    invoke-static {v0}, Lcom/tapjoy/internal/s9;->a(Ljava/lang/Exception;)V

    throw p1

    :catch_5b
    move-exception v0

    invoke-static {v0}, Lcom/tapjoy/internal/s9;->a(Ljava/lang/Exception;)V

    throw p1

    :cond_60
    :goto_60
    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/i5;->b(Lcom/tapjoy/internal/d4;)V

    iget-object p1, p0, Lcom/tapjoy/internal/k5;->c:Lcom/tapjoy/internal/i6;

    iget-boolean v0, p1, Lcom/tapjoy/internal/x0;->a:Z

    if-nez v0, :cond_76

    iget-object v0, p0, Lcom/tapjoy/internal/k5;->b:Lcom/tapjoy/internal/g2;

    iget-object v1, p1, Lcom/tapjoy/internal/i6;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/tapjoy/internal/x0;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/tapjoy/internal/i6;->g:Lcom/tapjoy/internal/t3;

    iget-object p1, p1, Lcom/tapjoy/internal/t3;->h:Lcom/tapjoy/internal/b;

    invoke-virtual {v0, v1, v2, p1}, Lcom/tapjoy/internal/g2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/a;)V

    :cond_76
    iget-object p1, p0, Lcom/tapjoy/internal/k5;->c:Lcom/tapjoy/internal/i6;

    iget-boolean v0, p1, Lcom/tapjoy/internal/i6;->l:Z

    if-eqz v0, :cond_fb

    iget-object p1, p1, Lcom/tapjoy/internal/i6;->g:Lcom/tapjoy/internal/t3;

    iget-object p1, p1, Lcom/tapjoy/internal/t3;->k:Ljava/util/LinkedHashMap;

    if-eqz p1, :cond_fb

    const-string v0, "action_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_fb

    iget-object p1, p0, Lcom/tapjoy/internal/k5;->c:Lcom/tapjoy/internal/i6;

    iget-object p1, p1, Lcom/tapjoy/internal/i6;->g:Lcom/tapjoy/internal/t3;

    iget-object p1, p1, Lcom/tapjoy/internal/t3;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_fb

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_fb

    iget-object v0, p0, Lcom/tapjoy/internal/k5;->c:Lcom/tapjoy/internal/i6;

    iget-object v0, v0, Lcom/tapjoy/internal/i6;->e:Lcom/tapjoy/internal/v1;

    iget-object v0, v0, Lcom/tapjoy/internal/v1;->e:Lcom/tapjoy/internal/w1;

    if-nez v0, :cond_a9

    goto :goto_fb

    :cond_a9
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/tapjoy/internal/w1;->b:Lcom/tapjoy/internal/o3;

    invoke-virtual {v2}, Lcom/tapjoy/internal/o3;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/tapjoy/internal/w1;->a:Lcom/tapjoy/internal/o3;

    invoke-virtual {v3}, Lcom/tapjoy/internal/o3;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d8

    :cond_d1
    iget-object v2, v0, Lcom/tapjoy/internal/w1;->a:Lcom/tapjoy/internal/o3;

    invoke-virtual {v2, v1}, Lcom/tapjoy/internal/o3;->b(Ljava/lang/String;)V

    const-string v2, ""

    :cond_d8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_e0

    const/4 v1, 0x1

    goto :goto_e1

    :cond_e0
    const/4 v1, 0x0

    :goto_e1
    if-eqz v1, :cond_e4

    goto :goto_f6

    :cond_e4
    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f5

    const-string v1, ","

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_f6

    :cond_f5
    move-object p1, v2

    :goto_f6
    iget-object v0, v0, Lcom/tapjoy/internal/w1;->b:Lcom/tapjoy/internal/o3;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/o3;->b(Ljava/lang/String;)V

    :cond_fb
    :goto_fb
    iget-object p1, p0, Lcom/tapjoy/internal/k5;->a:Landroid/app/Activity;

    instance-of v0, p1, Lcom/tapjoy/TJContentActivity;

    if-eqz v0, :cond_104

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_104
    return-void
.end method
