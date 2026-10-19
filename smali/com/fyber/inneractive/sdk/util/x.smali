###### Class com.fyber.inneractive.sdk.util.x (com.fyber.inneractive.sdk.util.x)
.class public Lcom/fyber/inneractive/sdk/util/x;
.super Lcom/fyber/inneractive/sdk/util/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/util/x$b;,
        Lcom/fyber/inneractive/sdk/util/x$a;,
        Lcom/fyber/inneractive/sdk/util/x$c;,
        Lcom/fyber/inneractive/sdk/util/x$d;
    }
.end annotation


# static fields
.field public static final synthetic b:I


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    instance-of p0, p0, Landroid/app/Activity;

    if-nez p0, :cond_14

    const/high16 p0, 0x10000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_14
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fyber/inneractive/sdk/activities/InneractiveInternalBrowserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "spotId"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    instance-of p0, p0, Landroid/app/Activity;

    if-nez p0, :cond_1a

    const/high16 p0, 0x10000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_1a
    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_14

    if-nez p1, :cond_6

    goto :goto_14

    :cond_6
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_f

    const/high16 v1, 0x10000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_f
    :try_start_f
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_12
    .catch Landroid/content/ActivityNotFoundException; {:try_start_f .. :try_end_12} :catch_14

    const/4 p0, 0x1

    return p0

    :catch_14
    :cond_14
    :goto_14
    return v0
.end method

.method public static d(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "http%3A%2F%2F"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "https%3A%2F%2F"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public static e(Ljava/lang/String;)Z
    .registers 4

    const-string v0, "tel:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_42

    const-string v0, "voicemail:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "sms:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "mailto:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "geo:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "google.streetview:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_42

    :cond_32
    const/4 v0, 0x0

    :try_start_33
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/net/MalformedURLException; {:try_start_33 .. :try_end_38} :catch_39

    return v0

    :catch_39
    new-array v2, v1, [Ljava/lang/Object;

    aput-object p0, v2, v0

    const-string p0, "Failed to open Url: %s"

    invoke-static {p0, v2}, Lcom/fyber/inneractive/sdk/util/IAlog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_42
    :goto_42
    return v1
.end method

.method public static f(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_27

    invoke-static {}, Lcom/fyber/inneractive/sdk/util/p;->a()Z

    move-result v2

    if-eqz v2, :cond_10

    sget-object v2, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->M:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-boolean v2, v2, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->r:Z

    if-eqz v2, :cond_27

    :cond_10
    const-string v2, "http://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "http%3A%2F%2F"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x1

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p0, 0x0

    :goto_24
    if-nez p0, :cond_27

    goto :goto_28

    :cond_27
    const/4 v0, 0x1

    :goto_28
    return v0
.end method

###### Class com.fyber.inneractive.sdk.util.x.a (com.fyber.inneractive.sdk.util.x$a)
.class public final Lcom/fyber/inneractive/sdk/util/x$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/util/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/fyber/inneractive/sdk/util/x$d;

.field public final b:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/util/x$d;Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/util/x$a;->a:Lcom/fyber/inneractive/sdk/util/x$d;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/util/x$a;->b:Ljava/lang/Throwable;

    return-void
.end method

###### Class com.fyber.inneractive.sdk.util.x.b (com.fyber.inneractive.sdk.util.x$b)
.class public final Lcom/fyber/inneractive/sdk/util/x$b;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/util/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

###### Class com.fyber.inneractive.sdk.util.x.c (com.fyber.inneractive.sdk.util.x$c)
.class public final enum Lcom/fyber/inneractive/sdk/util/x$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/util/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fyber/inneractive/sdk/util/x$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fyber/inneractive/sdk/util/x$c;

.field public static final enum DO_NOT_OPEN_IN_INTERNAL_BROWSER:Lcom/fyber/inneractive/sdk/util/x$c;

.field public static final enum OPEN_EVERYTHING:Lcom/fyber/inneractive/sdk/util/x$c;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/fyber/inneractive/sdk/util/x$c;

    const-string v1, "DO_NOT_OPEN_IN_INTERNAL_BROWSER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/fyber/inneractive/sdk/util/x$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fyber/inneractive/sdk/util/x$c;->DO_NOT_OPEN_IN_INTERNAL_BROWSER:Lcom/fyber/inneractive/sdk/util/x$c;

    new-instance v1, Lcom/fyber/inneractive/sdk/util/x$c;

    const-string v3, "OPEN_EVERYTHING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/fyber/inneractive/sdk/util/x$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/fyber/inneractive/sdk/util/x$c;->OPEN_EVERYTHING:Lcom/fyber/inneractive/sdk/util/x$c;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/fyber/inneractive/sdk/util/x$c;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/fyber/inneractive/sdk/util/x$c;->$VALUES:[Lcom/fyber/inneractive/sdk/util/x$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/util/x$c;
    .registers 2

    const-class v0, Lcom/fyber/inneractive/sdk/util/x$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/util/x$c;

    return-object p0
.end method

.method public static values()[Lcom/fyber/inneractive/sdk/util/x$c;
    .registers 1

    sget-object v0, Lcom/fyber/inneractive/sdk/util/x$c;->$VALUES:[Lcom/fyber/inneractive/sdk/util/x$c;

    invoke-virtual {v0}, [Lcom/fyber/inneractive/sdk/util/x$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/inneractive/sdk/util/x$c;

    return-object v0
.end method

###### Class com.fyber.inneractive.sdk.util.x.d (com.fyber.inneractive.sdk.util.x$d)
.class public final enum Lcom/fyber/inneractive/sdk/util/x$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/util/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fyber/inneractive/sdk/util/x$d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fyber/inneractive/sdk/util/x$d;

.field public static final enum FAILED:Lcom/fyber/inneractive/sdk/util/x$d;

.field public static final enum OPENED_INTERNAL_STORE:Lcom/fyber/inneractive/sdk/util/x$d;

.field public static final enum OPENED_IN_INTERNAL_BROWSER:Lcom/fyber/inneractive/sdk/util/x$d;

.field public static final enum OPENED_USING_CHROME_NAVIGATE:Lcom/fyber/inneractive/sdk/util/x$d;

.field public static final enum OPEN_IN_EXTERNAL_APPLICATION:Lcom/fyber/inneractive/sdk/util/x$d;

.field public static final enum OPEN_IN_EXTERNAL_BROWSER:Lcom/fyber/inneractive/sdk/util/x$d;


# direct methods
.method public static constructor <clinit>()V
    .registers 13

    new-instance v0, Lcom/fyber/inneractive/sdk/util/x$d;

    const-string v1, "FAILED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/fyber/inneractive/sdk/util/x$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fyber/inneractive/sdk/util/x$d;->FAILED:Lcom/fyber/inneractive/sdk/util/x$d;

    new-instance v1, Lcom/fyber/inneractive/sdk/util/x$d;

    const-string v3, "OPENED_IN_INTERNAL_BROWSER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/fyber/inneractive/sdk/util/x$d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/fyber/inneractive/sdk/util/x$d;->OPENED_IN_INTERNAL_BROWSER:Lcom/fyber/inneractive/sdk/util/x$d;

    new-instance v3, Lcom/fyber/inneractive/sdk/util/x$d;

    const-string v5, "OPEN_IN_EXTERNAL_APPLICATION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/fyber/inneractive/sdk/util/x$d;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/fyber/inneractive/sdk/util/x$d;->OPEN_IN_EXTERNAL_APPLICATION:Lcom/fyber/inneractive/sdk/util/x$d;

    new-instance v5, Lcom/fyber/inneractive/sdk/util/x$d;

    const-string v7, "OPEN_IN_EXTERNAL_BROWSER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/fyber/inneractive/sdk/util/x$d;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/fyber/inneractive/sdk/util/x$d;->OPEN_IN_EXTERNAL_BROWSER:Lcom/fyber/inneractive/sdk/util/x$d;

    new-instance v7, Lcom/fyber/inneractive/sdk/util/x$d;

    const-string v9, "OPENED_USING_CHROME_NAVIGATE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/fyber/inneractive/sdk/util/x$d;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/fyber/inneractive/sdk/util/x$d;->OPENED_USING_CHROME_NAVIGATE:Lcom/fyber/inneractive/sdk/util/x$d;

    new-instance v9, Lcom/fyber/inneractive/sdk/util/x$d;

    const-string v11, "OPENED_INTERNAL_STORE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/fyber/inneractive/sdk/util/x$d;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/fyber/inneractive/sdk/util/x$d;->OPENED_INTERNAL_STORE:Lcom/fyber/inneractive/sdk/util/x$d;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/fyber/inneractive/sdk/util/x$d;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/fyber/inneractive/sdk/util/x$d;->$VALUES:[Lcom/fyber/inneractive/sdk/util/x$d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/util/x$d;
    .registers 2

    const-class v0, Lcom/fyber/inneractive/sdk/util/x$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/util/x$d;

    return-object p0
.end method

.method public static values()[Lcom/fyber/inneractive/sdk/util/x$d;
    .registers 1

    sget-object v0, Lcom/fyber/inneractive/sdk/util/x$d;->$VALUES:[Lcom/fyber/inneractive/sdk/util/x$d;

    invoke-virtual {v0}, [Lcom/fyber/inneractive/sdk/util/x$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/inneractive/sdk/util/x$d;

    return-object v0
.end method
