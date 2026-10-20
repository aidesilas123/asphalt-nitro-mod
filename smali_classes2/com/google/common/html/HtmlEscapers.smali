###### Class com.google.common.html.HtmlEscapers (com.google.common.html.HtmlEscapers)
.class public final Lcom/google/common/html/HtmlEscapers;
.super Ljava/lang/Object;
.source "HtmlEscapers.java"


# static fields
.field private static final a:Lcom/google/common/escape/d;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/google/common/escape/Escapers;->builder()Lcom/google/common/escape/Escapers$b;

    move-result-object v0

    const/16 v1, 0x22

    const-string v2, "&quot;"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/escape/Escapers$b;->b(CLjava/lang/String;)Lcom/google/common/escape/Escapers$b;

    move-result-object v0

    const/16 v1, 0x27

    const-string v2, "&#39;"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/escape/Escapers$b;->b(CLjava/lang/String;)Lcom/google/common/escape/Escapers$b;

    move-result-object v0

    const/16 v1, 0x26

    const-string v2, "&amp;"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/escape/Escapers$b;->b(CLjava/lang/String;)Lcom/google/common/escape/Escapers$b;

    move-result-object v0

    const/16 v1, 0x3c

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/escape/Escapers$b;->b(CLjava/lang/String;)Lcom/google/common/escape/Escapers$b;

    move-result-object v0

    const/16 v1, 0x3e

    const-string v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/escape/Escapers$b;->b(CLjava/lang/String;)Lcom/google/common/escape/Escapers$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/escape/Escapers$b;->c()Lcom/google/common/escape/d;

    move-result-object v0

    sput-object v0, Lcom/google/common/html/HtmlEscapers;->a:Lcom/google/common/escape/d;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static htmlEscaper()Lcom/google/common/escape/d;
    .registers 1

    sget-object v0, Lcom/google/common/html/HtmlEscapers;->a:Lcom/google/common/escape/d;

    return-object v0
.end method
