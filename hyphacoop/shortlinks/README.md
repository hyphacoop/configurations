# Hypha Co-op: Shortlinks

For generating our `link.hypha.coop` shortlinks.

Configuration for these shortlinks are stored in
[`shortlinks.csv`](shortlinks.csv).

This repo contains only configuration and documentation. The shortlinks website is in the link.hypha.coop 
[`hyphacoop/link.hypha.coop` repo][site-repo]. Please see that repo
for details.

## Terminology

- **shortlink.** The shortened url. Example: https://link.hypha.coop/my-shortlink
- **base URL.** The base for the shortened urls. Example: `https://link.hypha.coop`
- **keyword.** (a.k.a. **slashtag**) The human-readable string that
  makes up the path of the shortlink, and is appended to the base URL.
Example: `my-shortlink`

## :muscle: Contributing

tl;dr - simply edit [`shortlinks.csv`](shortlinks.csv)!

- **Creating** a new shortlink? Add a new line.
- **Changing** an existing shortlink? Change the `resource_url`.
- **Removing** an existing shortlink? Clear the `resource_url` field, leaving the `keyword` field as-is.

To keep things lightweight, **make changes directly on `master`
branch**, without pull request. (Feel free to use a pull request if
you'd like a gut-check and you're not in a rush.)

As example: Say you want to create a new shortlink pointing
https://link.hypha.coop/my-shortlink to
https://example.com/asfjaflnadsesljarmdkasdjasd. Just add a new line to
`shortlinks.csv` with `my-shortlink` as the `keyword` and your complex
URL as the `destination_url`.

Shortlinks are ready to use immediately after commit to master branch.
