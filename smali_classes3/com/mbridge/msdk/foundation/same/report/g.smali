###### Class com.mbridge.msdk.foundation.same.report.g (com.mbridge.msdk.foundation.same.report.g)
.class public Lcom/mbridge/msdk/foundation/same/report/g;
.super Ljava/lang/Object;
.source "DomainReport.java"


# static fields
.field private static a:Ljava/lang/String; = "DomainReport"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/mbridge/msdk/c/e;Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_52

    :try_start_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_52

    invoke-virtual {p0}, Lcom/mbridge/msdk/c/e;->aq()I

    move-result v2

    invoke-virtual {p0}, Lcom/mbridge/msdk/c/e;->w()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mbridge/msdk/c/e;->x()Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_2d

    const/4 v4, 0x0

    :goto_19
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2d

    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2a

    return v0

    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_2d
    const/4 p0, 0x2

    if-ne v2, p0, :cond_52

    if-eqz v3, :cond_53

    const/4 p0, 0x0

    :goto_33
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p0, v2, :cond_53

    invoke-virtual {v3, p0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_41} :catch_47

    if-eqz v2, :cond_44

    return v1

    :cond_44
    add-int/lit8 p0, p0, 0x1

    goto :goto_33

    :catch_47
    move-exception p0

    sget-object p1, Lcom/mbridge/msdk/foundation/same/report/g;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_54

    :cond_52
    const/4 v0, 0x1

    :cond_53
    move v1, v0

    :goto_54
    return v1
.end method
