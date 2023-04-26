<div align="center" dir="auto">
  <h1>SensibleRails</h1>
<a target="_blank" rel="noopener noreferrer" href="https://github.com/davidteren/sensible_rails_starter"><img  width="480px" alt="Commit Stats" src="https://raw.githubusercontent.com/davidteren/sensible_rails_starter/48bd5aa6633b2c25ef1d2144d923d1072ac6cbeb/docs/images/rails-imageb.PNG" style="max-width: 50%;"></a>

<p>🚀 Focus on building stuff and not the setup. 🚀</p>
<br>

### Vision

To make the adoption of Ruby on Rails easier for use in projects.

### Philosophy

Keep with the _**[Boring Rails](https://boringrails.com/)**_ practice and way of doing things.

With some added nuances for developer happiness.

And Reactiveness... we'll let Russ explain.

[<img src="https://img.youtube.com/vi/utxCm3uLhIE/maxresdefault.jpg" width="50%">](https://youtu.be/utxCm3uLhIE)

<hr>

![Alt](https://repobeats.axiom.co/api/embed/c633364ac12df7e7fe528e3c90e8e6e68d282adc.svg "Repobeats analytics image")

<hr>

</div>

<ol>
<li><a href="#whats-in-the-box">What's in the box</a></li>
<li><a href="#getting-started">Getting Started</a></li>
<li><a href="#using-overcommit">Using Overcommit</a></li>
<li><a href="#alternatives">Alternatives</a></li>
<li><a href="#contributions">Contributions</a></li>
</ol>

## What's in the box

- **SimpleTails** a [TailwindCSS prose](https://tailwindcss.com/docs/typography-plugin) implementation heavily inspired by [SimpleCSS](https://simplecss.org/).
- [ViteRuby](https://vite-ruby.netlify.app/) for lightning fast server starts, instant page update in development thanks to HMR nd much more
- [Anyway Config](https://github.com/palkan/anyway_config) to keep your Ruby configuration sane
- [ViewComponents](https://viewcomponent.org/) - A framework for creating reusable, testable & encapsulated view components, built to integrate seamlessly with Ruby on Rails.
- [LookBook](https://github.com/ViewComponent/lookbook) - A tool to help browse, develop, test & document ViewComponents in Ruby on Rails apps
- [Tailwind Config Viewer](https://github.com/rogden/tailwind-config-viewer) - A local UI tool for visualizing your Tailwind CSS configuration file.
- [Avo](https://avohq.io/) - Avo uses familiar configuration to build up the features you need from most applications.
  The result is a full-featured customer-facing app that works out of the box, ready to be used to your end-users.

  > **NB:** Avo will likely be removed for an OSS option or self rolled solution
  >
- [overcommit](https://github.com/sds/overcommit) is a tool to manage and configure [Git hooks](https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks).

---

## Getting Started

### Native Development

- Click the [**_Use this template_**](https://github.com/davidteren/sensible_rails_starter/generate) button to create a
  clone of this repo in your Github account.
- Once you've git cloned your repo to your computer, run the following;

```bash
cd <app_name>
./bin/respawn
```

Then run the following to start the application.

```bash
./bin/dev
```

### Docker Development

We use [DIP - Docker Interaction Program](https://github.com/bibendi/dip) to make working with docker simpler.

Install DIP

```bash
gem install dip
```

Provision the containers & start the application

```bash
dip provision && dip up web
```

---

## Configuration

You can chnange the app name in `config/sensibles.yml`

[<img src="docs/images/sensibles-config.png" width="80%">](docs/images/sensibles-config.png)

---

## Using overcommit

[overcommit](https://github.com/sds/overcommit) a fully configurable and extendable Git hook manager is included.
When enabled the hooks will run each time a git commit is made. If any of the checks fail the commit will be ignored and
the erros will be shown.

Enable overcommit

```bash
 overcommit --sign && overcommit --sign pre-commit
````

Run overcommit

```bash
 overcommit --run
````

You should see the following
![pre-commit hooks image](docs/images/overcommit-run.png)

The above pre commit hooks have been defined in [.overcommit.yml](.overcommit.yml)

> **Troubleshooting Overcommit**
>
> <details>
> <summary>click for more</summary>
>
> If you get errors try running the following anf then the above steps.
>
> overcommit --uninstall
>
> ---
>
> ## Alternatives
>
> [See a list of alternative Rails 7 templates here](docs/sensibles/alternatives.md)
>
> ---
>
> ## Contributions
>
> Contributions welcome 🤗
>
>> Contributions aligning with the project vision are welcome.
>>
