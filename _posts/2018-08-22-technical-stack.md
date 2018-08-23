---  
title: Technical Stack
---

At a friend’s request[^1](), here is a summary of this blog’s technical stack.

This blog is hosted on GitHub Pages. Jekyll transforms Markdown files into a static website. An AWS CloudFront distribution provides HTTPS support as, unaffected by DNS record edits², GitHub Pages will not serve content over HTTPS³.

As I edit Markdown files in Ulysses, Dropbox notifies an AWS API Gateway. A chain of AWS Lambda functions syncs updates from Dropbox to the GitHub Pages repository⁴. The required resources are described by an AWS CloudFormation template, in spite of limitations⁵.

---

[^1]()\<small\>One who had grown tired of receiving status updates every time I surmounted a technical hurdle\</small\>

² Using a `CNAME` record instead of an `A` record, adding Let’s Encrypt to the `CAA` record, etc.

³ “Unavailable for your site because your domain is not properly configured to support HTTPS”

⁴ [smockle/dropblog][3]

⁵ For example:
* External Swagger files don’t support stage variables or pseudo parameters: [awslabs/serverless-application-model#345][4]
* S3-Lambda permissions and policies that reference S3 bucket names are mutually-exclusive, [unable-validate-circular-dependency-cloudformation][5] notwithstanding
* Neither `Fn::GetAtt` nor `Ref` return ARNs for all resources

[3]:	https://github.com/smockle/dropblog
[4]:	https://github.com/awslabs/serverless-application-model/issues/345
[5]:	https://aws.amazon.com/premiumsupport/knowledge-center/unable-validate-circular-dependency-cloudformation/